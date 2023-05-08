# data source
data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"   # ami name
  owners           = ["973714476881"]            # ami location 1st part

}

# instance creation
resource "aws_instance" "ec2" {
  ami                     = data.aws_ami.ami.image_id
  instance_type           = var.instance_type
  vpc_security_group_ids  = [var.sg_id]
  tags = {
    Name = var.component
  }
}


variable "component" {}
variable "instance_type" {}
variable "sg_id" {}

output "private_ip" {
  value = aws.instance.ec2.private_ip
}