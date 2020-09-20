terraform {
  required_providers {
    statuscake = {
      source = "thde/statuscake"
      version = "1.1.1"
    }
  }
}

provider "statuscake" {}