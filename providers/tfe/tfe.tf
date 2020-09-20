terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.21.0"
    }
  }
}

provider "tfe" {}