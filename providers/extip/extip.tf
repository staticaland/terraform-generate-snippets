terraform {
  required_providers {
    extip = {
      source = "petems/extip"
      version = "0.1.2"
    }
  }
}

provider "extip" {}