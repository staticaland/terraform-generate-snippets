terraform {
  required_providers {
    http = {
      source = "hashicorp/http"
      version = "1.2.0"
    }
  }
}

provider "http" {}