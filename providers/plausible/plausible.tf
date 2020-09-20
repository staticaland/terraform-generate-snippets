terraform {
  required_providers {
    plausible = {
      source = "beaucronin/plausible"
      version = "0.1.1"
    }
  }
}

provider "plausible" {}