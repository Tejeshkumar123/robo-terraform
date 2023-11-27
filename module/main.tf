module "s1" {
  source = "./ec2"
  name = "frontend"
}
module "s2" {
  source = "./ec2"
  name = "mongodb"
}
module "s3" {
  source = "./ec2"
  name = "catalogue"
}
module "s4" {
  source = "./ec2"
  name = "redis"
}
module "s5" {
  source = "./ec2"
  name = "user"
}
module "s6" {
  source = "./ec2"
  name = "cart"
}
module "s7" {
  source = "./ec2"
  name = "mysql"
}
module "s8" {
  source = "./ec2"
  name = "shipping"
}
module "s9" {
  source = "./ec2"
  name = "rabbitmq"
}
module "s10" {
  source = "./ec2"
  name = "payment"
}

output "s1_public_ip" {
  value = module.s1.public_ip
}