terraform {
  required_providers {
    aws-synthetics = {
      source = "MaksymBilenko/aws-synthetics"
      version = "0.1.3"
    }
  }
}

provider "aws-synthetics" {}