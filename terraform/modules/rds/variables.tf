variable "private_subnet_ids" {
  description = "List of private subnet IDs where RDS will be deployed"
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
  description = "Instance type for RDS"
  type        = string
  default     = "db.t3.micro"
}
