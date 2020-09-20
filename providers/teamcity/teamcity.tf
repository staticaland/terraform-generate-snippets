terraform {
  required_providers {
    teamcity = {
      source = "jeffwecan/teamcity"
      version = "1.0.1-jeffwecan-fork"
    }
  }
}

provider "teamcity" {}