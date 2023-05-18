# state file
terraform {
  backend "s3" {
    bucket = "terraform-71"
    key    = "05-s3-state/terraform.tfstate"   # file name
    region = "us-east-1"
  }
}

resource "aws_instance" "ec2" {
  ami                    = "ami-0b5a2b5b8f2be4ec2"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0d55a1e1e3546f2a0"]
  tags = {
    Name = "test"
  }
}