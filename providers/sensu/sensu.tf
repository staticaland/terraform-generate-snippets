terraform {
  required_providers {
    sensu = {
      source = "jtopjian/sensu"
      version = "0.10.5"
    }
  }
}

provider "sensu" {}