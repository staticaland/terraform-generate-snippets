terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "1.32.0"
    }
  }
}

provider "openstack" {}