terraform {
  required_providers {
    outlook = {
      source = "magodo/outlook"
      version = "0.0.4"
    }
  }
}

provider "outlook" {}