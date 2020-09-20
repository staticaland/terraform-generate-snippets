terraform {
  required_providers {
    mysql = {
      source = "winebarrel/mysql"
      version = "1.9.0-p5"
    }
  }
}

provider "mysql" {}