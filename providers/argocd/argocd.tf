terraform {
  required_providers {
    argocd = {
      source = "oboukili/argocd"
      version = "0.4.5"
    }
  }
}

provider "argocd" {}