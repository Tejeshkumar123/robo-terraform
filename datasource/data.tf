data "aws_ec2_spot_price" "example" {
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
}
output "t2_micro_spot_price" {
  value = data.aws_ec2_spot_price.example.spot_price
}
