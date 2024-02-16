terraform {
  backend "s3" {
    bucket  = "class400kopk"
    region  = "us-east-1"
    key     = "oidc/terraform.tfstate"
    encrypt = true
  }
}
#