data "aws_ssm_parameter" "amzn2_latest" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_instance" "web" {
  ami           = data.aws_ssm_parameter.amzn2_latest.value
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id
  vpc_security_group_ids = [var.ec2_security_group_id]

  associate_public_ip_address = true

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl enable httpd
    systemctl start httpd
    echo "Hello from Terraform EC2 in Mumbai!" > /var/www/html/index.html
  EOF

  tags = {
    Name = "terraform-web-ec2"
  }
}


