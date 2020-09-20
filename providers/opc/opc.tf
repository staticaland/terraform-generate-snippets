terraform {
  required_providers {
    opc = {
      source = "hashicorp/opc"
      version = "1.4.0"
    }
  }
}

provider "opc" {}