# AWS EC2 Instance Terraform module

Terraform module which creates an EC2 instance on AWS.

## Config(Only needs to do it once)

### 1. Install Terraform

### 2. Config AWS credential for Terrafrom authentication

Add below config to your bashrc or zshrc

The needed information you can find in your account->Security Credentials->Access Keys

```hcl
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export AWS_REGION="ue-north-1"
```

### 3. Replace values in variables.tf

- key pair name
- instance_type
- ami_id
- subnet

## Deploy
In root of the repo
```hcl
terraform init
terraform plan
terraform apply
```

## SSH

 ssh -i "lei-north-1.pem" ubuntu@ec2-13-50-5-112.eu-north-1.compute.amazonaws.com

Replace pem file name and your DNS
## Install docker
Follow link:https://docs.docker.com/engine/install/ubuntu/

OR

1. create docker file in ec2: copy ./install_docker/ec2_docker.sh to ec2
2. chmod 755 ec2_docker.sh
3. sudo ec2_docker.sh