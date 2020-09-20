terraform {
  required_providers {
    github = {
      source = "kuwas/github"
      version = "2.9.2"
    }
  }
}

provider "github" {}