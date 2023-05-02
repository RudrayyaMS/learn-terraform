variable "sample" {
  default = "hello world"
}

output "sample" {
  value = var.simple
}

variable "sample1" {}

output "sample1" {
  value = var.sample1
}