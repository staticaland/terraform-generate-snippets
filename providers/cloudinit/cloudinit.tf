terraform {
  required_providers {
    cloudinit = {
      source = "hashicorp/cloudinit"
      version = "1.0.0"
    }
  }
}

provider "cloudinit" {}