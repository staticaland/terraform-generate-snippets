terraform {
  required_providers {
    rancher = {
      source = "eLobeto/rancher"
      version = "1.5.1"
    }
  }
}

provider "rancher" {}