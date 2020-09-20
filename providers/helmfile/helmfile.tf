terraform {
  required_providers {
    helmfile = {
      source = "mumoshu/helmfile"
      version = "0.7.3"
    }
  }
}

provider "helmfile" {}