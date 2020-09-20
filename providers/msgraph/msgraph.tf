terraform {
  required_providers {
    msgraph = {
      source = "yaegashi/msgraph"
      version = "0.0.5"
    }
  }
}

provider "msgraph" {}