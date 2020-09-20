terraform {
  required_providers {
    oraclepaas = {
      source = "hashicorp/oraclepaas"
      version = "1.5.3"
    }
  }
}

provider "oraclepaas" {}