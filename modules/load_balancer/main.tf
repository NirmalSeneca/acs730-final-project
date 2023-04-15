# Define the provider
provider "aws" {
  region = "us-east-1"
}


# Data source for availability zones in us-east-1
data "aws_availability_zones" "available" {
  state = "available"
}



# Define tags locally
locals {
  name_prefix  = "${var.prefix}-${var.env}"
}



# Use remote state to retrieve the data
data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "${var.env}-group12-project"
    key    = "${var.env}-network/terraform.tfstate"
    region = "us-east-1"
  }
}


# Application Load Balancer 
resource "aws_lb" "alb" {
  name                       = "${var.env}-load-balancer"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [var.sg_id]
  subnets                    = data.terraform_remote_state.network.outputs.public_subnet_id[*]
  enable_deletion_protection = false
  
  tags = {
     "Name" = "${local.name_prefix}-alb"
  }
}


resource "aws_lb_listener" "lb_listener_http" {
  load_balancer_arn = aws_lb.alb.id
  port              = "80"
  protocol          = "HTTP"
  default_action {
    target_group_arn = aws_lb_target_group.group.id
    type             = "forward"
  }
}

# Load balancer target group  
resource "aws_lb_target_group" "group" {
  name     = "${var.env}-loadbalancer-targetgroup"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.terraform_remote_state.network.outputs.vpc_id
  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 6
    timeout             = 60
    interval            = 61
  }

  

}


