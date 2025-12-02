output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = module.ec2.ec2_public_ip
}

output "rds_endpoint" {
  description = "Endpoint of the RDS MySQL instance"
  value       = module.rds.rds_endpoint
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "List of private subnet IDs used for RDS"
  value       = module.vpc.private_subnet_ids
}

output "public_subnet_id" {
  description = "Public subnet ID used by EC2"
  value       = module.vpc.public_subnet_id
}
