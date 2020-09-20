terraform {
  required_providers {
    itop = {
      source = "Ouest-France/itop"
      version = "0.6.1"
    }
  }
}

provider "itop" {}