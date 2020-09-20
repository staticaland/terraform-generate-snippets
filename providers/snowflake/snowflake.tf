terraform {
  required_providers {
    snowflake = {
      source = "chanzuckerberg/snowflake"
      version = "0.15.0"
    }
  }
}

provider "snowflake" {}