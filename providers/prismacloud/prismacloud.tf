terraform {
  required_providers {
    prismacloud = {
      source = "PaloAltoNetworks/prismacloud"
      version = "1.0.1"
    }
  }
}

provider "prismacloud" {}