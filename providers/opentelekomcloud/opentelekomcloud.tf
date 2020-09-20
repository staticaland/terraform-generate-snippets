terraform {
  required_providers {
    opentelekomcloud = {
      source = "opentelekomcloud/opentelekomcloud"
      version = "1.20.0"
    }
  }
}

provider "opentelekomcloud" {}