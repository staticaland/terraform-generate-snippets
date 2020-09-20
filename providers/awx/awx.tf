terraform {
  required_providers {
    awx = {
      source = "nolte/awx"
      version = "0.2.0"
    }
  }
}

provider "awx" {}