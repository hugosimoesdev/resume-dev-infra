module "s3" {
  source         = "./modules/s3"
  s3_bucket_name = "resume-dev-iac"
  s3_tags = {
    Iac = true
  }
}

