terraform {
  required_providers {
    pingfederate = {
      source = "iwarapter/pingfederate"
      version = "0.0.5"
    }
  }
}

provider "pingfederate" {}