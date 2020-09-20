terraform {
  required_providers {
    circleci = {
      source = "TomTucka/circleci"
      version = "0.2.0"
    }
  }
}

provider "circleci" {}