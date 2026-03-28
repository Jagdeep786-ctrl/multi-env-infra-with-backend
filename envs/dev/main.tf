module "dev-tf" {
    source = "../../infra-module"
    env = "dev"
    instance_count = 2
    instance_type = "t3.micro"
    ec2_ami_id = "ami-02dfbd4ff395f2a1b"
    bucket_name = "s3-tf-441"
    hash_key = "LockID"


}
