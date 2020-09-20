terraform {
  required_providers {
    hetznerdns = {
      source = "timohirt/hetznerdns"
      version = "1.1.1"
    }
  }
}

provider "hetznerdns" {}