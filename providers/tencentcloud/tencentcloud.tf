terraform {
  required_providers {
    tencentcloud = {
      source = "tencentcloudstack/tencentcloud"
      version = "1.43.0"
    }
  }
}

provider "tencentcloud" {}