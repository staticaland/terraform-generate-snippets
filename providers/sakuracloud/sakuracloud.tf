terraform {
  required_providers {
    sakuracloud = {
      source = "sacloud/sakuracloud"
      version = "2.4.1"
    }
  }
}

provider "sakuracloud" {}