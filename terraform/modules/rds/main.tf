variable "private_subnet_ids" {
  description = "List of private subnet IDs for RDS subnet group"
  type        = list(string)
}

variable "rds_security_group_id" {
  description = "Security group ID for RDS"
  type        = string
}

variable "db_username" {
  description = "Master username for RDS"
  type        = string
}

variable "db_password" {
  description = "Master password for RDS"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "RDS instance type"
  type        = string
  default     = "db.t3.micro"
}

# -----------------------------
# RDS Subnet Group
# -----------------------------
resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "tf-db-subnet-group"
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = "terraform-db-subnet-group"
  }
}

# -----------------------------
# RDS MySQL Instance
# -----------------------------
resource "aws_db_instance" "mysql" {
  identifier             = "terraform-mysql-db"
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = var.db_instance_class
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids = [var.rds_security_group_id]
  skip_final_snapshot    = true
  publicly_accessible    = false
  storage_type           = "gp2"
  port                   = 3306

  tags = {
    Name = "terraform-mysql-db"
  }
}

# -----------------------------
# Outputs
# -----------------------------
output "rds_endpoint" {
  description = "RDS database endpoint"
  value       = aws_db_instance.mysql.address
}

output "rds_port" {
  description = "RDS port"
  value       = aws_db_instance.mysql.port
}
