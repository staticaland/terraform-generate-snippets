terraform {
  required_providers {
    errorcheck = {
      source = "jb-abbadie/errorcheck"
      version = "2.0.4"
    }
  }
}

provider "errorcheck" {}