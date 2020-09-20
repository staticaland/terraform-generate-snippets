terraform {
  required_providers {
    jenkins = {
      source = "jramospagantis/jenkins"
      version = "1.0.1"
    }
  }
}

provider "jenkins" {}