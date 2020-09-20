terraform {
  required_providers {
    fastly = {
      source = "innovia/fastly"
      version = "0.20.2-pre"
    }
  }
}

provider "fastly" {}