# ec2-instance-using-IAC

If you dont have Linux setup then set an Virtual Server on AWS using EC2 ubuntu server prefferd .
=> mkdir terraform-for-devops
create an directory with the command and proceed then
1. Install Terraform
sudo apt update
sudo apt install wget unzip -y
wget https://releases.hashicorp.com/terraform/1.9.5/terraform_1.9.5_linux_amd64.zip
unzip terraform_1.9.5_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform -version

✔ 2. Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version

✔ 3. Configure AWS Credentials
aws configure


Enter:

AWS Access Key ID

AWS Secret Access Key

Region (e.g., ap-south-1)

Output format → json

✔ 4. Create an SSH Key Pair (if not existing)
ssh-keygen -t rsa -f terra-key-ec2


This generates:

terra-key-ec2 (private key — DO NOT upload)

terra-key-ec2.pub (public key — safe to upload)

-----After set up proceed with these steps----

👉 1️⃣ Initialize Terraform
terraform init

👉 2️⃣ Validate Files
terraform validate

👉 3️⃣ Preview Resources (PLAN)
terraform plan

👉 4️⃣ Apply the Configuration (CREATE EC2)
terraform apply


Type yes to confirm.
