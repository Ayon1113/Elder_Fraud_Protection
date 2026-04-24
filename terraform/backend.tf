terraform {
  backend "s3" {
    bucket = "terraform-state-elder-fraud-ayon1113"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}