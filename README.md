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