# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Nirmal, Vedha, Ateeq, Charan"
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Name prefix
variable "prefix" {
  default     = "Group12"
  type        = string
  description = "Name prefix"
}


# Variable to signal the current environment 
variable "env" {
  default     = "staging"
  type        = string
  description = "dev environment"
}


# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.300.0.0/16"
  type        = string
  description = "VPC for Dev environment"
}


# Number of Instances in ASG
variable "instance_count" {
  default     = 3
  type        = string
  description = "Dev Environment Instances Count"
}




# Provision public subnets in VPC
variable "public_subnet_cidrs" {
  default     = ["10.300.1.0/24", "10.300.2.0/24", "10.300.3.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}



# Provision private subnets in VPC
variable "private_subnet_cidrs" {
  default     = ["10.300.4.0/24", "10.300.5.0/24", "10.300.6.0/24"]
  type        = list(string)
  description = "Private Subnet CIDRs"
}



# ASG Instance Type
variable "type" {
  default     = "t3.small"
  type        = string
  description = "Dev Environment Instances Type"
}