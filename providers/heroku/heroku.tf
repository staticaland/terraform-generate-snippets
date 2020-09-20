terraform {
  required_providers {
    heroku = {
      source = "heroku/heroku"
      version = "2.6.1"
    }
  }
}

provider "heroku" {}