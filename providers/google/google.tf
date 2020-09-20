terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.39.0"
    }
  }
}

provider "google" {}