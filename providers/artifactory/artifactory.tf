terraform {
  required_providers {
    artifactory = {
      source = "jfrog/artifactory"
      version = "2.2.3"
    }
  }
}

provider "artifactory" {}