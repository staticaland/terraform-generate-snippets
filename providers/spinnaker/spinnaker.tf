terraform {
  required_providers {
    spinnaker = {
      source = "tidal-engineering/spinnaker"
      version = "1.0.4"
    }
  }
}

provider "spinnaker" {}