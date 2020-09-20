terraform {
  required_providers {
    healthchecksio = {
      source = "arthur-leclerc/healthchecksio"
      version = "1.6.0"
    }
  }
}

provider "healthchecksio" {}