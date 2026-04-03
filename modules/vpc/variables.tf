variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for public subnet"
  type        = string
}

variable "project_name" {
  description = "Name prefix for tagging"
  type        = string
}
