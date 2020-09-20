terraform {
  required_providers {
    wavefront = {
      source = "vmware/wavefront"
      version = "2.5.1"
    }
  }
}

provider "wavefront" {}