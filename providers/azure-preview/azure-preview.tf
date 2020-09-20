terraform {
  required_providers {
    azure-preview = {
      source = "innovationnorway/azure-preview"
      version = "0.1.0-alpha.2"
    }
  }
}

provider "azure-preview" {}