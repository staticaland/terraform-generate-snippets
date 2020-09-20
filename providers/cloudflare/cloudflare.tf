terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "2.11.0"
    }
  }
}

provider "cloudflare" {}