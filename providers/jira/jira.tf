terraform {
  required_providers {
    jira = {
      source = "fourplusone/jira"
      version = "0.1.14"
    }
  }
}

provider "jira" {}