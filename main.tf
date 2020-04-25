# Deploy s3 scan lambda
module "s3-encryption-lambda" {
  source = "./modules/s3-scan-encryption"

  filename = "s3-encryption-payload.zip"
}
