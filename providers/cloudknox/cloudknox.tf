terraform {
  required_providers {
    cloudknox = {
      source = "cloudknox/cloudknox"
      version = "0.3.0"
    }
  }
}

provider "cloudknox" {}