terraform {
  required_providers {
    commandpersistence = {
      source = "terrycain/commandpersistence"
      version = "1.0.2"
    }
  }
}

provider "commandpersistence" {}