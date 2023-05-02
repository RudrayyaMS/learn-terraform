data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"   # ami name
  owners           = [" 973714476881"]            # ami location 1st part

}

output "ami-id" {
  value = data.aws_ami.ami.image_id
}