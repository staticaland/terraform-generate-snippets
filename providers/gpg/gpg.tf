terraform {
  required_providers {
    gpg = {
      source = "invidian/gpg"
      version = "0.3.0"
    }
  }
}

provider "gpg" {}