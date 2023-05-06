data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"   # ami name
  owners           = ["973714476881"]            # ami location 1st part

}

resource "aws_instance" "frontend" {
  count                  = length(var.intances)
  ami                    = "ami-0b5a2b5b8f2be4ec2"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0d55a1e1e3546f2a0"]
  tags = {
    Name = var.instances[count.index]
  }

}

variable "instances" {
  default = [ "cart" , "catalogue", "user" , "payment" , "shipping" ]
}

output "public-ip" {
  value = aws_instance.frontend.*.public_ip
}