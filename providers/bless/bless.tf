terraform {
  required_providers {
    bless = {
      source = "chanzuckerberg/bless"
      version = "0.4.2"
    }
  }
}

provider "bless" {}