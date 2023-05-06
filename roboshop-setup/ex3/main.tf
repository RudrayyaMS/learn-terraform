data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"   # ami name
  owners           = ["973714476881"]            # ami location 1st part

}

 input as map of maps
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

output "ec2" {
  value = [for k , v in aws_instance.instances : "${k} - ${v.public_ip}"]
}
#immature code
#variable "names" {
#  default = ["catalogue" , "user"]
#}
#
#variable "types" {
#  default = [ "t3.micro" , "t3.small"]
#}
#
#resource "aws_instance" "instances" {
#  count  = length(var.names)
#  ami                    = "ami-0b5a2b5b8f2be4ec2"
#  instance_type          = var.types[count.index]
#  vpc_security_group_ids = ["sg-0d55a1e1e3546f2a0"]
#  tags = {
#    Name = var.names[count.index]
#  }
#}

## Little mature code
#resource "aws_instance" "instances" {
#  count    = length(var.instances)
#  ami                    = "ami-0b5a2b5b8f2be4ec2"
#  instance_type          = var.demo[count.index]["type"]
#  vpc_security_group_ids = ["sg-0d55a1e1e3546f2a0"]
#  tags = {
#    Name = var.demp[count.index]["name"]
#  }
#}
#
#variable "demo" {
#  default = [
#    {
#      name ="catalogue"
#      type ="t3.micro"
#    },
#     {
#      name  = "user"
#      type = "t3.small"
#    }
#  ]
#}






