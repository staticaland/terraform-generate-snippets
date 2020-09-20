terraform {
  required_providers {
    kafka-connect = {
      source = "Mongey/kafka-connect"
      version = "0.2.3"
    }
  }
}

provider "kafka-connect" {}