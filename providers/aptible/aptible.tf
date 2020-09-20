terraform {
  required_providers {
    aptible = {
      source = "aptible/aptible"
      version = "0.1.2"
    }
  }
}

provider "aptible" {}