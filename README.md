# Terraform Backend Bootstrap

This project provisions the foundational infrastructure required to support Terraform state management in AWS.

## 📦 Resources Created

- **S3 Bucket** → Stores Terraform remote state
- **DynamoDB Table** → Provides state locking and concurrency control

## 🧱 Architecture

Terraform uses:

- S3 for remote state storage
- DynamoDB for distributed locking

## 🚀 Usage

```bash
cd bootstrap
terraform init
terraform apply
```

## 🔐 Best Practices Applied

- Remote state storage
- State locking (DynamoDB)
- S3 versioning enabled
- Server-side encryption

## 📌 Notes

This repository should be executed **once per AWS account/environment**.

Other Terraform projects should reference this backend:

```hcl
terraform {
  backend "s3" {
    bucket         = "tf-state-global"
    key            = "project/env/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-lock-global"
  }
}
```
