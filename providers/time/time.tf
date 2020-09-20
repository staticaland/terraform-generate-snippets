terraform {
  required_providers {
    time = {
      source = "hashicorp/time"
      version = "0.5.0"
    }
  }
}

provider "time" {}