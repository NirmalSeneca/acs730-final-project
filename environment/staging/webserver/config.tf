terraform {
  backend "s3" {
    bucket = "staging-group12-project"
    key    = "staging-webserver/terraform.tfstate"
    region = "us-east-1"
  }
}