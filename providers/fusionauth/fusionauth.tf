terraform {
  required_providers {
    fusionauth = {
      source = "gpsinsight/fusionauth"
      version = "0.1.9"
    }
  }
}

provider "fusionauth" {}