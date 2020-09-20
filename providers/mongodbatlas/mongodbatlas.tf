terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
      version = "0.6.4"
    }
  }
}

provider "mongodbatlas" {}