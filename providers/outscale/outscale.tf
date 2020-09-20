terraform {
  required_providers {
    outscale = {
      source = "outscale-dev/outscale"
      version = "0.1.0"
    }
  }
}

provider "outscale" {}