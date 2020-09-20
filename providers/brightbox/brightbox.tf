terraform {
  required_providers {
    brightbox = {
      source = "brightbox/brightbox"
      version = "1.4.3"
    }
  }
}

provider "brightbox" {}