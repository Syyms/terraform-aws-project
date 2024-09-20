resource "aws_s3_bucket" "example" {
  bucket_prefix = "my-tf-test-bucket-prefix"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# Hands-on 4: use the module from the repo terraform-aws-s3-module
module "s3_bucket" {
  source  = "git@github.com:Syyms/terraform-aws-s3-module.git?ref=v1.0.0"

  s3_bucket_name = "my-super-main-project-bucket"
  key_name       = "my-main-project-kms-key"
}

output "bucket_name" {
  value = module.s3_bucket.s3_bucket_name
}

output "kms_key_alias" {
  value = module.s3_bucket.kms_key_alias
}