terraform {
  required_providers {
    gridscale = {
      source = "gridscale/gridscale"
      version = "1.7.0"
    }
  }
}

provider "gridscale" {}