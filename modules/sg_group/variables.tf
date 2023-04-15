variable "default_tags" {
  default = {
    "Owner" = "Nirmal, Vedha, Ateeq, Charan"
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

variable "prefix" {
  default     = "Group12"
  type        = string
  description = "Name prefix"
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



variable "env" {
  default     = "dev"
  type        = string
  description = "dev environment"
}