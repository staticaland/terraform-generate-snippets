terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.21.0"
    }
  }
}

provider "hcloud" {}