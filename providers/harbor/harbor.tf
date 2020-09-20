terraform {
  required_providers {
    harbor = {
      source = "BESTSELLER/harbor"
      version = "0.2.1"
    }
  }
}

provider "harbor" {}