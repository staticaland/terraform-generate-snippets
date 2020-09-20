terraform {
  required_providers {
    elasticsearch = {
      source = "phillbaker/elasticsearch"
      version = "1.4.3"
    }
  }
}

provider "elasticsearch" {}