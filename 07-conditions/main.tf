resource "aws_instance" "ec2" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}

variable "instance_type" {}

variable "create_instance" {}

resource "aws_instance" "ec21" {
  count = tobool(var.create_instance) ? 1 : 0              # convert string to boolean
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}