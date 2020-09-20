terraform {
  required_providers {
    pagerduty = {
      source = "PagerDuty/pagerduty"
      version = "1.7.10"
    }
  }
}

provider "pagerduty" {}