terraform {
  required_providers {
    databricks = {
      source = "databrickslabs/databricks"
      version = "0.2.5"
    }
  }
}

provider "databricks" {}