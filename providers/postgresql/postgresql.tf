terraform {
  required_providers {
    postgresql = {
      source = "cyrilgdn/postgresql"
      version = "1.7.2"
    }
  }
}

provider "postgresql" {}