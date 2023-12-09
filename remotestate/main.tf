terraform {
  backend "s3" {
    bucket = "tejbucket-terraform"
    key    = "tej/sample"
    region = "us-east-1"
  }
}
output "sample" {
  value = "apple is a fruit"
}