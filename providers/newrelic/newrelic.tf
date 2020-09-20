terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "2.7.4"
    }
  }
}

provider "newrelic" {}