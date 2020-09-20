terraform {
  required_providers {
    mackerel = {
      source = "kjmkznr/mackerel"
      version = "0.3.2"
    }
  }
}

provider "mackerel" {}