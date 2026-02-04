# terraform_aws_strapi


AWS Strapi Infrastructure Project


This project automates the deployment of a Strapi 5 CMS on an AWS EC2 instance using Terraform. It is designed to work efficiently even on Free Tier (t2.micro/t3.micro) instances by using optimized memory management.

terraform_aws_strapi/


├── main.tf            # AWS Infrastructure (EC2, VPC, Security Groups)


├── variables.tf       # Configurable variables


├── outputs.tf         # IP addresses and connection info


├── .gitignore         # Prevents big files from going to GitHub


├── README.md          # This file


└── (strapi-app)/      # Your Strapi source code
