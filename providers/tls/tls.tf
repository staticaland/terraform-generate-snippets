terraform {
  required_providers {
    tls = {
      source = "someara/tls"
      version = "2.3.0-pre"
    }
  }
}

provider "tls" {}