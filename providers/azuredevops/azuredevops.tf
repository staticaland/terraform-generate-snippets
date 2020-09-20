terraform {
  required_providers {
    azuredevops = {
      source = "ellisdon-oss/azuredevops"
      version = "0.0.2"
    }
  }
}

provider "azuredevops" {}