terraform {
  required_providers {
    exoscale = {
      source = "exoscale/exoscale"
      version = "0.19.0"
    }
  }
}

provider "exoscale" {}