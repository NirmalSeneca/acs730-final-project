

# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Nirmal, Vedha, Ateeq, Charan"
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}



variable "max_size" {
  #default     = 4
  type        = string
  description = "Maximum capacity of Auto scaling group"
}

variable "desired_size" {
 # default = 3
  type        = string
  description = "Desired capacity of Auto scaling group which is 3  for all the environment"
}


# Variable to signal the current environment 
variable "env" {
  default     = "dev"
  type        = string
  description = "dev environment"
}


variable "prefix" {
  default     = "Group12"
  type        = string
  description = "Name prefix group name"
}



variable "target_group_arn" {


  type        = string
  description = "Load Balancer Id"



}

variable "launch_config_name" {
  type        = string
  description = " User data template"
}



variable "min_size" {
  type        = string
  description = "Minimum capacity of Auto scaling group which is 1 in our case for all the environment"
}


