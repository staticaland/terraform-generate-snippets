terraform {
  required_providers {
    auth0 = {
      source = "alexkappa/auth0"
      version = "0.14.0"
    }
  }
}

provider "auth0" {}