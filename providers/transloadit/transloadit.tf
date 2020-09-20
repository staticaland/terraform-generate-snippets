terraform {
  required_providers {
    transloadit = {
      source = "transloadit/transloadit"
      version = "0.2.0"
    }
  }
}

provider "transloadit" {}