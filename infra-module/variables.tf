
#variables.tf

variable "env" {
  description = "this is env of instance"
  type = string

}

variable "instance_count" {
  description = "total no of instance"
  type = number
}

variable "instance_type" {
  description = "this is type of instance"
  type = string
}

variable "ec2_ami_id" {
  description = "this is instance ami_id"
  type = string
}

variable "bucket_name" {
  description = "this is name of s3 bucket"
  type = string
}

variable "hash_key" {
  description = "this is hash key for dynamodb"
  type = string
}