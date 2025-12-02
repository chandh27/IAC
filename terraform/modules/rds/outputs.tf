output "rds_endpoint" {
  description = "Endpoint address of the RDS MySQL instance"
  value       = aws_db_instance.mysql.address
}

output "rds_port" {
  description = "Port number of the RDS MySQL instance"
  value       = aws_db_instance.mysql.port
}

output "rds_identifier" {
  description = "RDS instance identifier"
  value       = aws_db_instance.mysql.id
}
