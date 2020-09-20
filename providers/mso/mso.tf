terraform {
  required_providers {
    mso = {
      source = "CiscoDevNet/mso"
      version = "0.1.2"
    }
  }
}

provider "mso" {}