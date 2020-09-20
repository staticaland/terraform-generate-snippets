terraform {
  required_providers {
    null = {
      source = "mildred/null"
      version = "1.1.0"
    }
  }
}

provider "null" {}