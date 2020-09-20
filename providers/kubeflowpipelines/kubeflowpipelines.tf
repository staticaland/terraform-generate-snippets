terraform {
  required_providers {
    kubeflowpipelines = {
      source = "datarootsio/kubeflowpipelines"
      version = "0.0.10"
    }
  }
}

provider "kubeflowpipelines" {}