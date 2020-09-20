terraform {
  required_providers {
    ovh = {
      source = "ovh/ovh"
      version = "0.9.1"
    }
  }
}

provider "ovh" {}