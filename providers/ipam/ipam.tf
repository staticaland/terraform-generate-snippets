terraform {
  required_providers {
    ipam = {
      source = "beauknowssoftware/ipam"
      version = "0.2.6"
    }
  }
}

provider "ipam" {}