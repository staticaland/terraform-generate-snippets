terraform {
  required_providers {
    icinga2 = {
      source = "Icinga/icinga2"
      version = "0.5.0-pre"
    }
  }
}

provider "icinga2" {}