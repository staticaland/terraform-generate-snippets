terraform {
  required_providers {
    statuspage = {
      source = "yannh/statuspage"
      version = "0.1.6"
    }
  }
}

provider "statuspage" {}