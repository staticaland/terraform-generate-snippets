terraform {
  required_providers {
    azurestack = {
      source = "hashicorp/azurestack"
      version = "0.9.0"
    }
  }
}

provider "azurestack" {}