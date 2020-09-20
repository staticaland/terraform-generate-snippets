terraform {
  required_providers {
    mssql = {
      source = "drarko/mssql"
      version = "0.0.4"
    }
  }
}

provider "mssql" {}