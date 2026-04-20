variable "bucket_name" {
  description = "S3 bucket for Terraform state"
  type        = string
  default     = "s3-tfstate-global"
}

variable "dynamodb_table_name" {
  description = "DynamoDB table for locking"
  type        = string
  default     = "ddb-tflock-global"
}


variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}
