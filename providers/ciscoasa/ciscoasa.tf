terraform {
  required_providers {
    ciscoasa = {
      source = "hashicorp/ciscoasa"
      version = "1.2.0"
    }
  }
}

provider "ciscoasa" {}