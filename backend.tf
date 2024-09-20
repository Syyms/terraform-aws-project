terraform {
  backend "s3" {
    # Hands-on 2: replace <alias> with your alias, e.g. terraform-backend-dob-elgama
    bucket = "terraform-backend-dob-<alias>"
    key    = "terraform-aws-project"
    region = "eu-central-1"
  }
}
