terraform {
  required_providers {
    ncloud = {
      source = "NaverCloudPlatform/ncloud"
      version = "1.3.1"
    }
  }
}

provider "ncloud" {}