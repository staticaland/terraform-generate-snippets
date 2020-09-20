terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "3.0.0-pre-test"
    }
  }
}

provider "gitlab" {}