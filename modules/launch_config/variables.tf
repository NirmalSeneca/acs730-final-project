# Instance type
variable "instance_type" {
  default     = "t2.micro"
  description = "Type of the instance"
  type        = string
}

# Variable to signal the current environment 
variable "env" {
  default     = "dev"
  type        = string
  description = "dev environment"
  }
  
  
  # Name prefix
variable "prefix" {
  default     = "Group12"
  type        = string
  description = "Name prefix"
}




# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Nirmal, Vedha, Ateeq, Charan"
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}
  
  


# Number of Instances in ASG
variable "instance_count" {
  default     = "2"
  type        = string
  description = "Dev Environment Instances Count"
}

# ASG Instance Type
variable "type" {
  default     = "t3.micro"
  type        = string
  description = "Dev Environment Instances Type"
}


variable "sg_id" {
  type        = string
  description = "Webserver security group id"
}

