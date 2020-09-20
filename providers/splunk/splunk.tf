terraform {
  required_providers {
    splunk = {
      source = "splunk/splunk"
      version = "1.0.0"
    }
  }
}

provider "splunk" {}