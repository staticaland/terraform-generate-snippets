terraform {
  required_providers {
    azuread = {
      source = "hashicorp/azuread"
      version = "1.0.0"
    }
  }
}

provider "azuread" {}