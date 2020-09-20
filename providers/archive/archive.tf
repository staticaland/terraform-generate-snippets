terraform {
  required_providers {
    archive = {
      source = "hashicorp/archive"
      version = "1.3.0"
    }
  }
}

provider "archive" {}