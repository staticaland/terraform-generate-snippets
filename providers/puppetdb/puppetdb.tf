terraform {
  required_providers {
    puppetdb = {
      source = "camptocamp/puppetdb"
      version = "1.2.0"
    }
  }
}

provider "puppetdb" {}