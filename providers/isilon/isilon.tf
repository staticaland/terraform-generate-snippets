terraform {
  required_providers {
    isilon = {
      source = "rudexi/isilon"
      version = "0.1.2"
    }
  }
}

provider "isilon" {}