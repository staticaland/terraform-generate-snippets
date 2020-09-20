terraform {
  required_providers {
    sumologic = {
      source = "SumoLogic/sumologic"
      version = "2.2.2"
    }
  }
}

provider "sumologic" {}