terraform {
  required_providers {
    opnsense = {
      source = "kradalby/opnsense"
      version = "0.0.2-pre"
    }
  }
}

provider "opnsense" {}