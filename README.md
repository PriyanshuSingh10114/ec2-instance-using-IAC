# EC2 Instance Using Terraform (IaC)

This project explains how to deploy an EC2 instance on AWS using Terraform.  
You can either use a Linux machine or an AWS EC2 Ubuntu server for running Terraform commands.

You can achieve complete automation using output.tf it will directly provide you all the ip's and direct ssh link that you can copy paste and use for development without changing the window.


---

## Prerequisites and Setup

1. Create a working directory:
```bash
mkdir terraform-for-devops
cd terraform-for-devops
Install Terraform:

bash
sudo apt update
sudo apt install wget unzip -y
wget https://releases.hashicorp.com/terraform/1.9.5/terraform_1.9.5_linux_amd64.zip
unzip terraform_1.9.5_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform -version
Install AWS CLI:

bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version
Configure AWS credentials:

bash
aws configure
Enter the following when prompted:

AWS Access Key ID

AWS Secret Access Key

Default region name (example: ap-south-1)

Output format (json)

Create an SSH key pair:

bash
ssh-keygen -t rsa -f terra-key-ec2
This creates:

terra-key-ec2 (private key — do not upload)

terra-key-ec2.pub (public key)

Terraform Commands
Initialize Terraform:

bash
terraform init
Validate configuration:

bash
terraform validate
Preview resources:

bash
terraform plan
Apply configuration (create EC2 instance):

bash
terraform apply
Type "yes" to confirm.


Destroy Infrastructure

To delete all created resources:

terraform destroy


Type "yes" to confirm.
