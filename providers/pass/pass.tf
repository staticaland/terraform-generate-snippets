terraform {
  required_providers {
    pass = {
      source = "camptocamp/pass"
      version = "1.4.0"
    }
  }
}

provider "pass" {}