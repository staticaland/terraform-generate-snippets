terraform {
  required_providers {
    openshift = {
      source = "llomgui/openshift"
      version = "1.1.0"
    }
  }
}

provider "openshift" {}