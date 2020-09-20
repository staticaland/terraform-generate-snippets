terraform {
  required_providers {
    ct = {
      source = "poseidon/ct"
      version = "0.6.1"
    }
  }
}

provider "ct" {}