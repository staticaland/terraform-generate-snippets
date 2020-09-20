terraform {
  required_providers {
    sysdig = {
      source = "sysdiglabs/sysdig"
      version = "0.4.0"
    }
  }
}

provider "sysdig" {}