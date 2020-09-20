terraform {
  required_providers {
    kind1 = {
      source = "unicell/kind1"
      version = "0.0.2-u2"
    }
  }
}

provider "kind1" {}