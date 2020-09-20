terraform {
  required_providers {
    dns = {
      source = "someara/dns"
      version = "2.3.0-pre"
    }
  }
}

provider "dns" {}