#!/usr/bin/env python3

import os

import requests
import jinja2

url = "https://registry.terraform.io/v2/providers?page[number]={page}&page[size]=100"
version_url = (
    "https://registry.terraform.io/v2/providers/{id}?include=provider-versions"
)

JINJA_TEMPLATE = """terraform {
  required_providers {
    [[name]] = {
      source = "[[full_name]]"
      version = "[[version]]"
    }
  }
}


"""

# Probably need to create a versions file instead

environment = jinja2.Environment(
    loader=jinja2.BaseLoader(),
    block_start_string="[%",
    block_end_string="%]",
    variable_start_string="[[",
    variable_end_string="]]",
    autoescape=False,
    trim_blocks=True,
)

template = environment.from_string(JINJA_TEMPLATE)

for i in range(4):

    r = requests.get(url.format(page=i))

    for r in r.json().get("data"):

        provider_id = r.get("id")
        provider_name = r.get("attributes").get("name")
        provider_full_name = r.get("attributes").get("full-name")

        if provider_name in ["terraform"]:
            continue

        r = requests.get(version_url.format(id=provider_id))

        provider_version = r.json().get("included")

        # breakpoint()
        provider_version = sorted(
            provider_version, key=lambda r: r.get("attributes").get("published-at")
        )

        provider_version = provider_version[-1].get("attributes").get("version")

        filename = f"providers/{provider_name}/{provider_name}.tf"

        os.makedirs(os.path.dirname(filename), exist_ok=True)

        provider_block = f'provider "{provider_name}" {{}}'

        with open(filename, "w") as f:

            required_providers_block = template.render(
                name=provider_name,
                full_name=provider_full_name,
                version=provider_version,
            )

            f.write(required_providers_block)

            f.write(provider_block)
