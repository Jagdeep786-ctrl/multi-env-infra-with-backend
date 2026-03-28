

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.36"
    }
  }

#   backend "s3" {
#     bucket         = "prd-s3-tf-441"
#     key            = "prd/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "prd-infra-app-table"
#   }
}