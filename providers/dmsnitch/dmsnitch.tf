terraform {
  required_providers {
    dmsnitch = {
      source = "plukevdh/dmsnitch"
      version = "0.1.2"
    }
  }
}

provider "dmsnitch" {}