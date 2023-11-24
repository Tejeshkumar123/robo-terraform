data "aws_ec2_spot_price" "example" {
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
}

filter {
  name   = "product-description"
  values = ["Linux/UNIX"]
}
output "t2_micro_spot_price" {
  value = data.aws_ec2_spot_price.example.spot_price
}
data "aws_security_group" "selected" {
  id = "sg-0a1bb0374a177c7cf"
}
output "allow_all_id" {
  value = data.aws_security_group.selected.vpc_id
}



