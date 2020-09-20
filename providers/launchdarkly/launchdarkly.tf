terraform {
  required_providers {
    launchdarkly = {
      source = "launchdarkly/launchdarkly"
      version = "1.4.1"
    }
  }
}

provider "launchdarkly" {}