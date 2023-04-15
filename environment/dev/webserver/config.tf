terraform {
  backend "s3" {
    bucket = "dev-group12-project"
    key    = "dev-webserver/terraform.tfstate"
    region = "us-east-1"
  }
}