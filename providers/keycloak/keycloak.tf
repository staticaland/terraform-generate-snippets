terraform {
  required_providers {
    keycloak = {
      source = "mrparkers/keycloak"
      version = "2.0.0-rc.0"
    }
  }
}

provider "keycloak" {}