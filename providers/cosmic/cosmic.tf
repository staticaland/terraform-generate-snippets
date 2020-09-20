terraform {
  required_providers {
    cosmic = {
      source = "MissionCriticalCloud/cosmic"
      version = "0.5.0"
    }
  }
}

provider "cosmic" {}