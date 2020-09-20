terraform {
  required_providers {
    etcd = {
      source = "syntech-pro/etcd"
      version = "1.0.2"
    }
  }
}

provider "etcd" {}