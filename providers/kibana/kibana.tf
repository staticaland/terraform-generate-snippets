terraform {
  required_providers {
    kibana = {
      source = "mayjak/kibana"
      version = "0.1.1"
    }
  }
}

provider "kibana" {}