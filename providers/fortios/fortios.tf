terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
      version = "1.6.1"
    }
  }
}

provider "fortios" {}