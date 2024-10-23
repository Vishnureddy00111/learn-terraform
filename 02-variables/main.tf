variable "URL" {
  default = "example.com"
}


#Access variable
output "URL" {
  value = var.URL
}

#variable is combination of some other string.then we have to use ${}

output "URL1" {
  value = "URL - ${var.URL}"
}

#Data types
variable "num1" {
  default = true
}
variable "bool1" {
  default = true
}
variable "string1" {
  default = "Hello"
}

#number,booleans,string
# variable type

variable "string2" {
  default = "world"
}
variable "list1" {
  default = [
    10,
    20,
    "xyz",
    false
  ]
}
#list can have combination of multiple data types
variable "map1" {
  default = {
    aws = {
      trainer="John"
      duration=30
    }

    }
  }
output "list_1" {
  value = var.list1[2]
}

output "map1_aws_trainer" {
  value = var.map1["aws"]["trainer"]
}

#declaration empty variable we can get the value from CLI,Unlike ansible or shell we mush and should declare variable in order to use.

variable "trainer_name" {}
output "trainer_name" {
  value = "steve"
}