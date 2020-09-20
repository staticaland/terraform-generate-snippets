terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
      version = "3.93.0"
    }
  }
}

provider "oci" {}