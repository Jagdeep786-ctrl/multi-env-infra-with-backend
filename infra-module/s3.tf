resource "aws_s3_bucket" "infra_bucket" {
  bucket = "${var.env}-${var.bucket_name}"
  tags = {
    Name = "${var.env}-${var.bucket_name}"
    Environment = var.env
  }
}


resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.infra_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}



resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket = aws_s3_bucket.infra_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}