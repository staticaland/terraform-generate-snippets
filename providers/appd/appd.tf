terraform {
  required_providers {
    appd = {
      source = "maskerade/appd"
      version = "0.0.5"
    }
  }
}

provider "appd" {}