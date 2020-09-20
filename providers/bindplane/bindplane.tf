terraform {
  required_providers {
    bindplane = {
      source = "BlueMedoraPublic/bindplane"
      version = "0.2.4"
    }
  }
}

provider "bindplane" {}