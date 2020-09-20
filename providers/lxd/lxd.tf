terraform {
  required_providers {
    lxd = {
      source = "arren-ru/lxd"
      version = "1.3.1"
    }
  }
}

provider "lxd" {}