terraform {
  required_providers {
    ldap = {
      source = "Ouest-France/ldap"
      version = "0.2.0"
    }
  }
}

provider "ldap" {}