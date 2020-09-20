terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "2.3.0"
    }
  }
}

provider "random" {}