terraform {
  required_providers {
    okta = {
      source = "oktadeveloper/okta"
      version = "3.5.0"
    }
  }
}

provider "okta" {}