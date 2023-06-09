# Instance type
variable "instance_type" {
  default     = "t3.medium"
  description = "Type of the instance"
  type        = string
}

# Variable to signal the current environment 
variable "env" {
  default     = "prod"
  type        = string
  description = "dev environment"
}

#private ip for cloud9 needs to add cloud9's private ip mannualy
variable "cloud_private_ip" {
  default     = "172.31.43.159"
  type        = string
  description = "PRIVATE IP OF CLOUD9"
}


#public ip for cloud9 needs to add cloud9's public ip mannualy
variable "cloud_public_ip" {
  default     = "3.81.138.136"
  type        = string
  description = "public IP OF CLOUD9"
}


# Minimum Size for the auto scaling group based on environment
variable "min_size" {
  default = {
    "prod"    = "1"
    "staging" = "1"
    "dev"     = "1"
  }
  description = "Minimum Size for the auto scaling group"
  type        = map(string)
}

# MMaximum Size for the auto scaling group based on environment
variable "desired_size" {
  default = {
    "prod"    = "3"
    "staging" = "3"
    "dev"     = "2"
  }
  description = "Desired Capaicty for the auto scaling group"
  type        = map(string)
}

# Maximum Size for the auto scaling group based on environment
variable "max_size" {
  default = {
    "prod"    = "4"
    "staging" = "4"
    "dev"     = "4"
  }
  description = "Maximum Size for the auto scaling group"
  type        = map(string)
}
