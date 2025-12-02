# Terraform vs AWS CloudFormation (AWS Mumbai Region)

This repository contains all code and evidence used for the CA2 research project comparing **Terraform** and **AWS CloudFormation** by deploying identical infrastructure in the AWS Mumbai region (ap-south-1).

The infrastructure implemented includes:

- Custom VPC (10.0.0.0/16)
- Public and private subnets
- EC2 instance running Apache HTTPD
- RDS MySQL database in private subnets
- Security groups
- Full lifecycle deployments for both Terraform and CloudFormation

---

## Repository Structure

```
ca2-infra-project/
│
├── README.md
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── modules/
│       ├── vpc/
│       ├── ec2/
│       └── rds/
│
├── cloudformation/
│   └── mumbai-infra.yaml
│
├── screenshots/
│
└── appendix/
    └── appendix.md
```

---

## Terraform Deployment Instructions

### 1. Initialise Terraform
```
terraform init
```

### 2. Preview resources
```
terraform plan
```

### 3. Deploy infrastructure
```
terraform apply
```

### 4. Destroy resources
```
terraform destroy
```

Outputs include:

- EC2 Public IP  
- RDS Endpoint  

---

## AWS CloudFormation Deployment Instructions

1. Open **AWS Console → CloudFormation → Create Stack**  
2. Upload the file:
```
cloudformation/mumbai-infra.yaml
```
3. Enter parameters (DB username, password, etc.)  
4. Deploy and view stack outputs  

The CloudFormation stack outputs include:

- EC2 Public IP  
- RDS Endpoint  

---

## Screenshots (Deployment Evidence)

All screenshots related to Terraform and CloudFormation deployment are located in the `screenshots/` folder, including:

- Terraform apply output  
- EC2 console view  
- RDS console view  
- CloudFormation CREATE_COMPLETE  
- Web server output  

---

## Appendix

The appendix is stored here:
```
appendix/appendix.md
```

It contains reproducibility notes, project structure, and links used in the research paper.

---

## References

Please refer to the Research Paper for complete Harvard-style references.

---

## Author

## CHANDINI N T  
## MSc Cloud Computing  
## Coursework – IT Infrastructure & Automation 



