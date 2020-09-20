terraform {
  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
      version = "1.10.3"
    }
  }
}

provider "rancher2" {}