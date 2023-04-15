terraform {
  backend "s3" {
    bucket = "prod-group12-project"
    key    = "prod-webserver/terraform.tfstate"
    region = "us-east-1"
  }
}