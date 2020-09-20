terraform {
  required_providers {
    victorops = {
      source = "splunk/victorops"
      version = "0.1.1"
    }
  }
}

provider "victorops" {}