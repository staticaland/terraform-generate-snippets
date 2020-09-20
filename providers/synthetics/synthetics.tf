terraform {
  required_providers {
    synthetics = {
      source = "MaksymBilenko/synthetics"
      version = "0.1.3"
    }
  }
}

provider "synthetics" {}