terraform {
  required_providers {
    pingaccess = {
      source = "iwarapter/pingaccess"
      version = "0.5.0-beta1"
    }
  }
}

provider "pingaccess" {}