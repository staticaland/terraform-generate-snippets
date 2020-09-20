terraform {
  required_providers {
    sendgrid = {
      source = "Trois-Six/sendgrid"
      version = "0.1.2"
    }
  }
}

provider "sendgrid" {}