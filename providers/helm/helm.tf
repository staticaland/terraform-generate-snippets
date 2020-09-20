terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "1.3.0"
    }
  }
}

provider "helm" {}