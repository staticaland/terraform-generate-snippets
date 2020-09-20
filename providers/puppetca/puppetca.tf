terraform {
  required_providers {
    puppetca = {
      source = "camptocamp/puppetca"
      version = "1.3.0"
    }
  }
}

provider "puppetca" {}