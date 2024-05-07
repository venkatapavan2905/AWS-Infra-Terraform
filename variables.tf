variable "region-name" {
    description = "Region Name"
}

variable "vpc-name" {
    description = "Name of VPC"
}

variable "vpc-cidr-block" {
    description = "Ip Address range for VPC"
}

variable "web-tier-cidr1" {
    description = "Ip Address range for Web tier subnet1"
}

variable "web-tier-cidr2" {
    description = "Ip Address range for web tier subnet2"
  
}

variable "az-1" {
    description = "Availability Zone2"
}

variable "az-2" {
    description = "Availability Zone2"
  
}
variable "web-tier-subnet1" {
    description = "Name of web tier subnet1" 
}

variable "web-tier-subnet2" {
    description = "Name of web tier subnet2" 
}