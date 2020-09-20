terraform {
  required_providers {
    cloudsmith = {
      source = "cloudsmith-io/cloudsmith"
      version = "0.0.5"
    }
  }
}

provider "cloudsmith" {}