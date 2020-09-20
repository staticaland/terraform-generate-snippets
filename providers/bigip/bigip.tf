terraform {
  required_providers {
    bigip = {
      source = "F5Networks/bigip"
      version = "1.3.2"
    }
  }
}

provider "bigip" {}