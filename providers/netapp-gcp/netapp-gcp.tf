terraform {
  required_providers {
    netapp-gcp = {
      source = "NetApp/netapp-gcp"
      version = "0.1.1"
    }
  }
}

provider "netapp-gcp" {}