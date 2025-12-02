terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# -----------------------------
# VPC Module
# -----------------------------
module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet1_cidr = var.private_subnet1_cidr
  private_subnet2_cidr = var.private_subnet2_cidr

  availability_zone1 = var.availability_zone1
  availability_zone2 = var.availability_zone2
}

# -----------------------------
# EC2 Module
# -----------------------------
module "ec2" {
  source = "./modules/ec2"

  public_subnet_id     = module.vpc.public_subnet_id
  ec2_security_group_id = module.vpc.ec2_security_group_id
  instance_type         = var.instance_type
}

# -----------------------------
# RDS Module
# -----------------------------
module "rds" {
  source = "./modules/rds"

  private_subnet_ids    = module.vpc.private_subnet_ids
  rds_security_group_id = module.vpc.rds_security_group_id
  db_username           = var.db_username
  db_password           = var.db_password
  db_instance_class     = var.db_instance_class
}
