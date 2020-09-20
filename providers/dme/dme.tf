terraform {
  required_providers {
    dme = {
      source = "DNSMadeEasy/dme"
      version = "0.1.2"
    }
  }
}

provider "dme" {}