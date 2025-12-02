# Appendix – Supporting Evidence for Terraform & CloudFormation Deployment

This appendix provides supporting material for the practical experiment conducted in this research project. It includes the GitHub repository structure, Terraform and CloudFormation resources, screenshots, and reproducibility notes for the AWS Mumbai Region deployment.

---

## 📁 Project Repository Link

All project files used in this research, including Terraform modules, the CloudFormation template, and screenshots, are available in this repository:

👉 https://github.com/your-repo-link-here

---

## 📂 Project Structure

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
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   └── outputs.tf
│       ├── ec2/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   └── outputs.tf
│       └── rds/
│           ├── main.tf
│           ├── variables.tf
│           └── outputs.tf
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

## 🛠 Reproducibility Notes

The infrastructure can be fully recreated using the workflows below.

### Terraform Workflow

```
terraform init
terraform plan
terraform apply
terraform destroy
```

### CloudFormation Workflow

1. Open AWS Console → CloudFormation → Create Stack
2. Upload `cloudformation/mumbai-infra.yaml`
3. Provide DB credentials
4. Deploy → View Outputs

---

## 📸 Deployment Screenshots (located in /screenshots)

- Terraform apply output  
- AWS VPC console view  
- EC2 Apache web server output  
- RDS instance (private subnets)  
- CloudFormation CREATE_COMPLETE status  

---

## 📌 Purpose of This Appendix

This appendix verifies that:
- The practical implementation was completed accurately  
- Terraform and CloudFormation deployments were executed successfully  
- The experiment is fully reproducible  
- All evidence aligns with the research paper  
