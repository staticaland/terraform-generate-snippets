terraform {
  required_providers {
    aws-spot-instance = {
      source = "faiq/aws-spot-instance"
      version = "1.0.0"
    }
  }
}

provider "aws-spot-instance" {}