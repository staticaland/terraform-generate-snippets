terraform {
  required_providers {
    gsuite = {
      source = "DeviaVir/gsuite"
      version = "0.1.54"
    }
  }
}

provider "gsuite" {}