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

- Amazon Web Services (AWS) 2024, AWS CloudFormation User Guide, https://docs.aws.amazon.com/cloudformation/.
- Amazon Web Services (AWS) 2024, Amazon Virtual Private Cloud (VPC) Documentation, https://docs.aws.amazon.com/vpc/.
- Amazon Web Services (AWS) 2024, Amazon EC2 Documentation, https://docs.aws.amazon.com/ec2/.
- Amazon Web Services (AWS) 2024, Amazon Relational Database Service (RDS) Documentation, https://docs.aws.amazon.com/rds/.
- HashiCorp 2024, Terraform Documentation, https://developer.hashicorp.com/terraform/docs.
- HashiCorp 2024, Terraform Best Practices: Infrastructure as Code, https://developer.hashicorp.com/terraform.
- Yevick, M. 2020, ‘A Comparison of AWS CloudFormation and HashiCorp Terraform for Infrastructure Automation’, Medium, https://medium.com.
- Rahman, A. & Williams, L. 2018, ‘Software Engineering for Infrastructure as Code: A Research Agenda’, IEEE Software, vol. 35, no. 1, pp. 44–52, https://doi.org/10.1109/MS.2017.4121227.
- Spinellis, D. 2018, ‘Declarative Configuration and Infrastructure as Code’, Communications of the ACM, vol. 61, no. 12, pp. 50–57, https://doi.org/10.1145/3276740.
- HashiCorp 2023, Multi-Cloud Infrastructure Automation with Terraform, https://www.hashicorp.com/resources.
- Amazon Web Services (AWS) 2024, Best Practices for CloudFormation Templates, AWS Solutions Architecture Team, https://aws.amazon.com/architecture/.

---

## Author

### CHANDINI N T  
#### MSc Cloud Computing  
#### Coursework – IT Infrastructure & Automation 






