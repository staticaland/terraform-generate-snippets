terraform {
  required_providers {
    sonarqube = {
      source = "labd/sonarqube"
      version = "0.1.1"
    }
  }
}

provider "sonarqube" {}