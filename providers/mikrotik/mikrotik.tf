terraform {
  required_providers {
    mikrotik = {
      source = "ddelnano/mikrotik"
      version = "0.3.5"
    }
  }
}

provider "mikrotik" {}