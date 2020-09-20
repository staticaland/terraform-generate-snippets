terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "1.4.1"
    }
  }
}

provider "vultr" {}