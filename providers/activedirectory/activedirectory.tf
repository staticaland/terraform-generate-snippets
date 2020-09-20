terraform {
  required_providers {
    activedirectory = {
      source = "PortOfPortland/activedirectory"
      version = "0.5.1-pre"
    }
  }
}

provider "activedirectory" {}