output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Public subnet ID for EC2 instance"
  value       = aws_subnet.public.id
}

output "private_subnet_ids" {
  description = "List of private subnet IDs for RDS"
  value       = [
    aws_subnet.private1.id,
    aws_subnet.private2.id
  ]
}

output "ec2_security_group_id" {
  description = "Security group ID for EC2 instance"
  value       = aws_security_group.ec2_sg.id
}

output "rds_security_group_id" {
  description = "Security group ID for RDS instance"
  value       = aws_security_group.rds_sg.id
}
