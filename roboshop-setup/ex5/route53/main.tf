# DNS record creation
resource "aws_route53_record" "record" {
  zone_id = "Z0900206KGOHOIP4AMC1"
  name    = "${var.component}-dev.devopsm71.online"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}
variable "component" {}


