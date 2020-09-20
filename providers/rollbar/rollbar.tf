terraform {
  required_providers {
    rollbar = {
      source = "davidji99/rollbar"
      version = "1.2.0"
    }
  }
}

provider "rollbar" {}