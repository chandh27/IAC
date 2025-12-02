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
  description = "Availability zone for public and private subnet 1"
  type        = string
}

variable "availability_zone2" {
  description = "Availability zone for private subnet 2"
  type        = string
}

# -----------------------------
# VPC
# -----------------------------
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "terraform-vpc"
  }
}

# -----------------------------
# Internet Gateway
# -----------------------------
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "terraform-igw"
  }
}

# -----------------------------
# Public Subnet
# -----------------------------
resou
