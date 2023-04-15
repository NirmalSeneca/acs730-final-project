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
  default     = "dev"
  type        = string
  description = "dev environment"
}






variable "sg_id" {
  type        = string
  description = "Load balancer security group id"
}