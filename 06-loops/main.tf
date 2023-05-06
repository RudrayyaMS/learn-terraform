variable "d1" {
  default = 5
}

resource "null resource" "nothing" {
  count = var.d1
}