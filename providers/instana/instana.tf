terraform {
  required_providers {
    instana = {
      source = "gessnerfl/instana"
      version = "0.9.0"
    }
  }
}

provider "instana" {}