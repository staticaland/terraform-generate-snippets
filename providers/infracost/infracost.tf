terraform {
  required_providers {
    infracost = {
      source = "infracost/infracost"
      version = "0.0.4"
    }
  }
}

provider "infracost" {}