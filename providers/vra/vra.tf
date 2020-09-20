terraform {
  required_providers {
    vra = {
      source = "vmware/vra"
      version = "0.3.2"
    }
  }
}

provider "vra" {}