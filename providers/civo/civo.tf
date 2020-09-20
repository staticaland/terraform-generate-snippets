terraform {
  required_providers {
    civo = {
      source = "civo/civo"
      version = "0.9.17"
    }
  }
}

provider "civo" {}