terraform {
  required_providers {
    datadog = {
      source = "DataDog/datadog"
      version = "2.13.0"
    }
  }
}

provider "datadog" {}