variable "simple" {
  default = "hello world"
}

output "simple" {
  value = var.simple
}