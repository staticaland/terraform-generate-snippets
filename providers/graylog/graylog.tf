terraform {
  required_providers {
    graylog = {
      source = "terraform-provider-graylog/graylog"
      version = "1.0.4"
    }
  }
}

provider "graylog" {}