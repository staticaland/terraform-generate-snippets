terraform {
  required_providers {
    linodex = {
      source = "ondrejsika/linodex"
      version = "1.0.0"
    }
  }
}

provider "linodex" {}