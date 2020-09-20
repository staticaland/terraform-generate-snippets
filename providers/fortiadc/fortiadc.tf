terraform {
  required_providers {
    fortiadc = {
      source = "Ouest-France/fortiadc"
      version = "0.3.0"
    }
  }
}

provider "fortiadc" {}