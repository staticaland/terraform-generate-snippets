terraform {
  required_providers {
    netbox = {
      source = "BESTSELLER/netbox"
      version = "0.1.6"
    }
  }
}

provider "netbox" {}