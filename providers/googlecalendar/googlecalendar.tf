terraform {
  required_providers {
    googlecalendar = {
      source = "sethvargo/googlecalendar"
      version = "0.1.7"
    }
  }
}

provider "googlecalendar" {}