terraform {
  required_providers {
    git = {
      source = "kuwas/git"
      version = "0.3.3"
    }
  }
}

provider "git" {}