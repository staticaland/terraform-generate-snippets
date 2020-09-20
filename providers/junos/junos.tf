terraform {
  required_providers {
    junos = {
      source = "jeremmfr/junos"
      version = "1.5.0"
    }
  }
}

provider "junos" {}