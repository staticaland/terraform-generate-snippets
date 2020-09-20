terraform {
  required_providers {
    ecloud = {
      source = "ukfast/ecloud"
      version = "1.2.6"
    }
  }
}

provider "ecloud" {}