terraform {
  required_providers {
    azurecaf = {
      source = "aztfmod/azurecaf"
      version = "1.1.1"
    }
  }
}

provider "azurecaf" {}