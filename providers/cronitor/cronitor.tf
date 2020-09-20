terraform {
  required_providers {
    cronitor = {
      source = "nauxliu/cronitor"
      version = "1.0.8"
    }
  }
}

provider "cronitor" {}