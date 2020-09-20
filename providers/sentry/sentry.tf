terraform {
  required_providers {
    sentry = {
      source = "jianyuan/sentry"
      version = "0.5.5"
    }
  }
}

provider "sentry" {}