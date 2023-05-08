# DNS record creation
resource "aws_route53_record" "record" {
  zone_id = "Z0900206KGOHOIP4AMC1"
  name    = "$(var.component)-dev.devopsm71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

