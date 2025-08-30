# Aws.Ec2.Update.Terraform
This repository contains Terraform scripts designed to facilitate SSH access to a server instance. It allows you to connect easily and run essential commands, such as updating the server, ensuring maintenance and security tasks are performed efficiently.

## Requirenments:
- Terraform installed
- Aws account
- Aws Key Pair (test.pem)
- Instance EC2 ready
- Create qa.tfvars file
- Define variables in qa.tfvars

## Steps with terraform
1. Terraform init and terraform workspace
```
terraform init
terraform workspace new qa
terraform workspace select qa
```

2. Terraform plan
```
terraform plan -var-file qa.tfvars
```
3. Terraform apply
```
terraform apply -var-file qa.tfvars