terraform {
  required_providers {
    k8s = {
      source = "mingfang/k8s"
      version = "1.0.0"
    }
  }
}

provider "k8s" {}