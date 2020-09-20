terraform {
  required_providers {
    freeipa = {
      source = "camptocamp/freeipa"
      version = "0.6.0"
    }
  }
}

provider "freeipa" {}