terraform {
  required_providers {
    exasol = {
      source = "abergmeier/exasol"
      version = "0.0.8"
    }
  }
}

provider "exasol" {}