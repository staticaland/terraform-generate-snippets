terraform {
  required_providers {
    petstore = {
      source = "DTherHtun/petstore"
      version = "1.0.1"
    }
  }
}

provider "petstore" {}