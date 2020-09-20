terraform {
  required_providers {
    lastpass = {
      source = "nrkno/lastpass"
      version = "0.5.1"
    }
  }
}

provider "lastpass" {}