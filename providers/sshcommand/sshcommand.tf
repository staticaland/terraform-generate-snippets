terraform {
  required_providers {
    sshcommand = {
      source = "invidian/sshcommand"
      version = "0.2.1"
    }
  }
}

provider "sshcommand" {}