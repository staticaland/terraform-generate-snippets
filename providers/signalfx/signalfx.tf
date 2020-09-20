terraform {
  required_providers {
    signalfx = {
      source = "splunk-terraform/signalfx"
      version = "5.0.0"
    }
  }
}

provider "signalfx" {}