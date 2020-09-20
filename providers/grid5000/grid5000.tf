terraform {
  required_providers {
    grid5000 = {
      source = "pmorillon/grid5000"
      version = "0.0.4"
    }
  }
}

provider "grid5000" {}