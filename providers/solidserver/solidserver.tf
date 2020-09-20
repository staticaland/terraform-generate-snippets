terraform {
  required_providers {
    solidserver = {
      source = "alexissavin/solidserver"
      version = "1.1.4"
    }
  }
}

provider "solidserver" {}