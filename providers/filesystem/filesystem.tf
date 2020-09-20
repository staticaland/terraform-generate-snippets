terraform {
  required_providers {
    filesystem = {
      source = "sethvargo/filesystem"
      version = "0.2.0"
    }
  }
}

provider "filesystem" {}