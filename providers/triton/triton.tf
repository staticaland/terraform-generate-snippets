terraform {
  required_providers {
    triton = {
      source = "joyent/triton"
      version = "0.8.0"
    }
  }
}

provider "triton" {}