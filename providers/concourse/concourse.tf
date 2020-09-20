terraform {
  required_providers {
    concourse = {
      source = "cappyzawa/concourse"
      version = "0.0.5"
    }
  }
}

provider "concourse" {}