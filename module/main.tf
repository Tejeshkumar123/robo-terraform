
module "s1" {
  source = "./ec2"
  name = "frontend"
}
module "s2" {
  source = "./ec2"
  name = "mongodb"
}
output "s1_public_ip" {
  value = module.s1.public_ip
}