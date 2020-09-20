terraform {
  required_providers {
    hashicups = {
      source = "hashicorp/hashicups"
      version = "0.3.0"
    }
  }
}

provider "hashicups" {}