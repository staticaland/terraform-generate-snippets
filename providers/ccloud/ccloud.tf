terraform {
  required_providers {
    ccloud = {
      source = "sapcc/ccloud"
      version = "1.4.8"
    }
  }
}

provider "ccloud" {}