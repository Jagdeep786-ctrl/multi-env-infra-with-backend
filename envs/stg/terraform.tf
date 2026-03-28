

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.36"
    }
  }

  # backend "s3" {
  #   bucket         = "stg-s3-tf-441"
  #   key = "stg/terraform.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "stg-infra-app-table"
  # }
}