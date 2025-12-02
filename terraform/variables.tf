# -----------------------------
# AWS Region
# -----------------------------
variable "aws_region" {
  description = "AWS region for all resources"
  type        = string
  default     = "ap-south-1"
}

# -----------------------------
# VPC & Subnet CIDRs
# -----------------------------
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet1_cidr" {
  description = "CIDR block for private subnet 1"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet2_cidr" {
  description = "CIDR block for private subnet 2"
  type        = string
  default     = "10.0.3.0/24"
}

# -----------------------------
# Availability Zones
# -----------------------------
variable "availability_zone1" {
  description = "Primary availability zone"
  type        = string
  default     = "ap-south-1a"
}

variable "availability_zone2" {
  description = "Secondary availability zone"
  type        = string
  default     = "ap-south-1b"
}

# -----------------------------
# EC2 Instance Type
# -----------------------------
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

# -----------------------------
# RDS Credentials & Instance Class
# -----------------------------
variable "db_username" {
  description = "Master username for the RDS MySQL instance"
  type        = string
}

variable "db_password" {
  description = "Master password for the RDS instance"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}
