terraform {
  required_providers {
    gitops = {
      source = "tyler-technologies/gitops"
      version = "0.0.2-rc"
    }
  }
}

provider "gitops" {}