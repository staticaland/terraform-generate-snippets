terraform {
  required_providers {
    hdns = {
      source = "alxrem/hdns"
      version = "0.2.0"
    }
  }
}

provider "hdns" {}