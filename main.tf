resource "aws_s3_bucket" "example" {
  bucket_prefix = "my-tf-test-bucket-prefix"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# Hands-on 4: use the module from the repo terraform-aws-s3-module