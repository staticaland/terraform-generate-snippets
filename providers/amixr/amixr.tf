terraform {
  required_providers {
    amixr = {
      source = "alertmixer/amixr"
      version = "0.2.1"
    }
  }
}

provider "amixr" {}