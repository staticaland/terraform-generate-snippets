terraform {
  required_providers {
    ns1 = {
      source = "ns1-terraform/ns1"
      version = "1.9.0"
    }
  }
}

provider "ns1" {}