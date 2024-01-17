# Terraform Azure Virtual WAN and Hubs

This Terraform project automates the deployment of Azure Virtual WAN and Virtual Hubs. It sets up a basic network infrastructure with multiple Virtual Networks and connects them to Azure Virtual WAN through Virtual Hubs.

## **Prerequisites**

Before you begin, ensure you have the following:

Terraform installed on your machine.
Azure subscription and necessary credentials.

## **Configuration**

terraform.tfvars: Define your variables here. 
file.tf: Main Terraform configuration file. 
vars.tf: Declares variables used in the configuration files.

## **Getting Started**

1. Clone the repository: $ git clone https://github.com/NashTech-Labs/Terraform-Azure-Virtual-WAN-and-Hubs.git

2. Navigate to the repository: $ cd Terraform-Azure-Virtual-WAN-and-Hubs

3. Review and customize variable values in terraform.tfvars.

4. Initialize Terraform: $ terraform init

5. Generate and review the Terraform plan: $ terraform plan

6. Apply the Terraform configuration: $ terraform apply

7. To destroy the deployed resources, run: $ terraform destroy
