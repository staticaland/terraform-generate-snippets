terraform {
  required_providers {
    kubernetes = {
      source = "bgcorreia/kubernetes"
      version = "1.12.4"
    }
  }
}

provider "kubernetes" {}