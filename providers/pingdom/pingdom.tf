terraform {
  required_providers {
    pingdom = {
      source = "russellcardullo/pingdom"
      version = "1.1.2"
    }
  }
}

provider "pingdom" {}