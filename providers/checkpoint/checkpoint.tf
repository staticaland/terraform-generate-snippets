terraform {
  required_providers {
    checkpoint = {
      source = "CheckPointSW/checkpoint"
      version = "1.0.5"
    }
  }
}

provider "checkpoint" {}