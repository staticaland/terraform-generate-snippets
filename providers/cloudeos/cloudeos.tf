terraform {
  required_providers {
    cloudeos = {
      source = "aristanetworks/cloudeos"
      version = "1.0.0"
    }
  }
}

provider "cloudeos" {}