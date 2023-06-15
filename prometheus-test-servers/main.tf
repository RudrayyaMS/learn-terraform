resource "aws_instance" "node1" {
  ami           = "ami-008ff397e44313f05"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0d55a1e1e3546f2a0"]
 # wait_for_fulfillment = true
  tags = {
    Name = "prom-test-server"
  }
}

#resource "aws_ec2_tag" "node1" {
#  resource_id = aws_instance.node1.spot_instance_id
#  key         = "Name"
#  value       = "prom-test-server"
#}


resource "aws_instance" "node2" {
  ami           = "ami-008ff397e44313f05"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0d55a1e1e3546f2a0"]
 # wait_for_fulfillment = true
  tags = {
    Name = "prom-test-node"
  }
}

#resource "aws_ec2_tag" "node2" {
#  resource_id = aws_instance.node2.spot_instance_id
#  key         = "Name"
#  value       = "prom-test-node"
#}