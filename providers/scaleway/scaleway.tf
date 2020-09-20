terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
      version = "1.16.0"
    }
  }
}

provider "scaleway" {}