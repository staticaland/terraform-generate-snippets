terraform {
  required_providers {
    pnap = {
      source = "phoenixnap/pnap"
      version = "0.6.0"
    }
  }
}

provider "pnap" {}