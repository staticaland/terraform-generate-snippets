terraform {
  required_providers {
    phpipam = {
      source = "VasseurLaurent/phpipam"
      version = "1.1.1"
    }
  }
}

provider "phpipam" {}