terraform {
  required_providers {
    kubernetes-alpha = {
      source = "hashicorp/kubernetes-alpha"
      version = "0.2.1"
    }
  }
}

provider "kubernetes-alpha" {}