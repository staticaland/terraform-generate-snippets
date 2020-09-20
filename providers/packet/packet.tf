terraform {
  required_providers {
    packet = {
      source = "packethost/packet"
      version = "3.0.1"
    }
  }
}

provider "packet" {}