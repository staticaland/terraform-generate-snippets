terraform {
  required_providers {
    nsxt = {
      source = "vmware/nsxt"
      version = "3.0.1"
    }
  }
}

provider "nsxt" {}