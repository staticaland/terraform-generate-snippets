terraform {
  required_providers {
    circonus = {
      source = "circonus-labs/circonus"
      version = "0.11.2"
    }
  }
}

provider "circonus" {}