variable "fruits" {
default = {
  apple={}
  bannana={}
  orange={}

}
}

resource "null_resource" "fruits" {
  for_each = var.fruits
}