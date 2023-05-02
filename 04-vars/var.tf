variable "sample" {
  default = "hello world"
}

output "sample" {
  value = var.sample
}

# using .tfvars
variable "sample1" {}

output "sample1" {
  value = var.sample1
}

# using cli
variable "cli" {}

output "cli" {
  value = var.cli
}