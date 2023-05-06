#variable "sample" {
#  default = "hello world"
#}
#
#output "sample" {
#  value = var.sample
#}
#
## using .tfvars
#variable "sample1" {}
#
#output "sample1" {
#  value = var.sample1
#}
#
## using cli
#variable "cli" {}
#
#output "cli" {
#  value = var.cli
#}
#
#variable "sample5" {
#  default = "Hello"
#}
#
#variable "sample6" {
#  default = [
#    "hello",
#    100,
#    true,
#    "world"
#  ]
#}
#
#variable "sample7" {
#  default = {
#    string = "hello"
#    number = 100
#    boolean = true
#  }
#}
#
#output "types" {
#  value = "variable samaple5 - ${var.sample5}, First value in List - ${var.sample6[0]}, Boolean value of Map - ${var.sample7["boolean"]}"
#}

variable "d1" {
  default = [
    {
      course_name = "aws"
      trainer_name = "muthu"
    },
    {
      course_name = "devops"
      trainer_name = "abc"
    }
  ]
}

output "course_names" {
  value = var.d1.*.course_name
}