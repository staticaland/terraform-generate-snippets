terraform {
  required_providers {
    pypi = {
      source = "jeffwecan/pypi"
      version = "0.0.3"
    }
  }
}

provider "pypi" {}