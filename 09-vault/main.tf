provider "vault" {
  address = "https://172.31.80.62:8200"
  token   = var.vault_token
  skip_tls_verify = true
}

variable "vault_token" {}

# data "vault_generic_secret" "example" {
#   path = "test/my_credentials"
# }

data "vault_kv_secret_v2" "example" {
  name  = "my_credentials"
  mount = "test"
}

resource "local_file" "foo" {
  content  = data.vault_kv_secret.v2.example.data_json["password"]
  filename = "/tmp/secret"
}

output "json" {
  value = data.vault_kv_secret_v2.example.data_json
}


