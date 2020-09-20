terraform {
  required_providers {
    esxi = {
      source = "josenk/esxi"
      version = "1.7.2"
    }
  }
}

provider "esxi" {}