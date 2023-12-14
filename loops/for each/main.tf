#############create ec2 instance terraform################
resource "aws_instance" "web" {
  for_each = var.instance
  ami  = data.aws_ami.example.id
  instance_type = lookup(each.value,"instance_type","t2.micro")

  tags = {
    Name = each.key
  }
}
###########ami id datasource terraform##############
data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

variable "instance" {
  default = {
    frontend = {
      name = "frontend"
    }
    mongodb = {
      name          = "mongodb"
      instance_type = "t3.small"
    }
    catalogue = {
      name = "catalogue"
    }
  }
}