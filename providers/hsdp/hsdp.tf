terraform {
  required_providers {
    hsdp = {
      source = "philips-software/hsdp"
      version = "0.6.3"
    }
  }
}

provider "hsdp" {}