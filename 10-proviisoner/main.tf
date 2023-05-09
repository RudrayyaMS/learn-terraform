resource "aws_instance" "ec2" {
  ami                     = "ami-0b5a2b5b8f2be4ec2"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = ["sg-0d55a1e1e3546f2a0"]
  tags = {
    Name = "demo"
  }

  provisioner "remote-exec" {
    connection  {
      host = self.public_ip      # connect to same host in same server user "self"
      user = "root"
      password = "DevOps321"
    }

    inline [
      "echo Hello"
    ]
  }
}