terraform {
  required_providers {
    kafka = {
      source = "Mongey/kafka"
      version = "0.2.10"
    }
  }
}

provider "kafka" {}