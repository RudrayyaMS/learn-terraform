variable "test" {
  default = {
    "catalogue" = {
      "private_ip" = "172.31.94.239"
    }
    "user" = {
      "private_ip" = "172.31.12.194"
    }
  }
}

output "test" {
  value = var.test["catalogue"].private_ip
}