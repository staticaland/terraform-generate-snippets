terraform {
  required_providers {
    safedns = {
      source = "ukfast/safedns"
      version = "1.1.2"
    }
  }
}

provider "safedns" {}