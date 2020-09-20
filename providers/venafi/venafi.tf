terraform {
  required_providers {
    venafi = {
      source = "Venafi/venafi"
      version = "0.10.0"
    }
  }
}

provider "venafi" {}