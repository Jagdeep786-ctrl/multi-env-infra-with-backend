

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.36"
    }
  }

  # backend "s3" {
  #   bucket         = "dev-s3-tf-441"
  #   key = "dev/terraform.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "dev-infra-app-table"
  # }
}