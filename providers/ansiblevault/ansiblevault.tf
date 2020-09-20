terraform {
  required_providers {
    ansiblevault = {
      source = "MeilleursAgents/ansiblevault"
      version = "2.1.0"
    }
  }
}

provider "ansiblevault" {}