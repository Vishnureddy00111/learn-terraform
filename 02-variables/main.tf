variable "URL" {
  default = "example.com"
}


#Access variable
output "URL" {
  value = var.URL
}