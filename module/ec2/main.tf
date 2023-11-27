resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"
  security_groups = [aws_security_group.sg.name]

  tags = {
    Name = var.name
  }
}

data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_security_group" "sg" {
  name        = var.name
  description = "Allow TLS inbound traffic"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.name
  }
}

variable "name" {}
output "public_ip" {
  value = aws_instance.web.public_ip
}