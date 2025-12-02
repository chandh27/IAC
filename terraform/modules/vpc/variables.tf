variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet1_cidr" {
  description = "CIDR block for private subnet 1"
  type        = string
}

variable "private_subnet2_cidr" {
  description = "CIDR block for private subnet 2"
  type        = string
}

variable "availability_zone1" {
  description = "Availability Zone for the public subnet and private subnet 1"
  type        = string
}

variable "availability_zone2" {
  description = "Availability Zone for private subnet 2"
  type        = string
}
