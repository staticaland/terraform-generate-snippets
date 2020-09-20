terraform {
  required_providers {
    sops = {
      source = "ahawkins/sops"
      version = "0.5.3-rc2"
    }
  }
}

provider "sops" {}