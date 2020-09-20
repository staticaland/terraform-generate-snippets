terraform {
  required_providers {
    algolia = {
      source = "philippe-vandermoere/algolia"
      version = "0.3.0"
    }
  }
}

provider "algolia" {}