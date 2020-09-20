terraform {
  required_providers {
    opsgenie = {
      source = "opsgenie/opsgenie"
      version = "0.5.0"
    }
  }
}

provider "opsgenie" {}