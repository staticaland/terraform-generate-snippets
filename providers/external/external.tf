terraform {
  required_providers {
    external = {
      source = "hashicorp/external"
      version = "1.2.0"
    }
  }
}

provider "external" {}