terraform {
  required_providers {
    kubectl = {
      source = "gavinbunney/kubectl"
      version = "1.7.0"
    }
  }
}

provider "kubectl" {}