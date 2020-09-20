terraform {
  required_providers {
    honeycombio = {
      source = "kvrhdn/honeycombio"
      version = "0.0.10"
    }
  }
}

provider "honeycombio" {}