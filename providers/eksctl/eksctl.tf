terraform {
  required_providers {
    eksctl = {
      source = "mumoshu/eksctl"
      version = "0.8.2"
    }
  }
}

provider "eksctl" {}