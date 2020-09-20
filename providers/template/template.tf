terraform {
  required_providers {
    template = {
      source = "hashicorp/template"
      version = "2.1.2"
    }
  }
}

provider "template" {}