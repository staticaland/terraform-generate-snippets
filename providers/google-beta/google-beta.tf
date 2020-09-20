terraform {
  required_providers {
    google-beta = {
      source = "hashicorp/google-beta"
      version = "3.39.0"
    }
  }
}

provider "google-beta" {}