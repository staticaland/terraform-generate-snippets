terraform {
  required_providers {
    awslambda = {
      source = "dedunumax/awslambda"
      version = "1.0.4"
    }
  }
}

provider "awslambda" {}