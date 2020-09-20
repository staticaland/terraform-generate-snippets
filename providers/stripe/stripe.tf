terraform {
  required_providers {
    stripe = {
      source = "franckverrot/stripe"
      version = "1.6.1"
    }
  }
}

provider "stripe" {}