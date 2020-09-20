terraform {
  required_providers {
    vra7 = {
      source = "vmware/vra7"
      version = "2.0.0"
    }
  }
}

provider "vra7" {}