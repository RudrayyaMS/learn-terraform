# data source
data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"   # ami name
  owners           = ["973714476881"]            # ami location 1st part

}

# instance creation
resource "aws_instance" "ec2" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-0d55a1e1e3546f2a0"]
  tags = {
    Name = var.component
  }
}

# DNS record creation
resource "aws_route53_record" "frontend" {
  zone_id = "Z0900206KGOHOIP4AMC1"
  name    = "$(var.component)_dev.devopsm71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

variable "component" {}
variable "instance_type" {}