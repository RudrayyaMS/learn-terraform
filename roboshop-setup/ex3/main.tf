data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"   # ami name
  owners           = ["973714476881"]            # ami location 1st part

}

resource "aws_instance" "instances" {
  for_each = var.instances
  ami                    = "ami-0b5a2b5b8f2be4ec2"
  instance_type          = each.value["type"]
  vpc_security_group_ids = ["sg-0d55a1e1e3546f2a0"]
  tags = {
    Name = each.value["name"]
  }
}

variable "instances" {
  default = {
    catalogue = {
      name ="catalogue"
      type ="t3.micro"
    }
    user = {
        name  = "user"
        type = "t3.small"
      }
    }
  }


