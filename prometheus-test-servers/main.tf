resource "aws_spot_instance_request" "node1" {
  ami           = "ami-008ff397e44313f05"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0d55a1e1e3546f2a0"]
  wait_for_fulfillment = true
  tags = {
    Name = "prom-test-server"
  }
}


resource "aws_spot_instance_request" "node2" {
  ami           = "ami-008ff397e44313f05"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0d55a1e1e3546f2a0"]
  wait_for_fulfillment = true
  tags = {
    Name = "prom-test-node"
  }
}