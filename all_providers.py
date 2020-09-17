#!/usr/bin/env python3

import os

import requests

url = "https://registry.terraform.io/v2/providers?page[number]={page}&page[size]=100"

# Probably need to create a versions file instead

for i in range(4):

    r = requests.get(url.format(page=i))

    for r in r.json().get("data"):

        provider_name = r.get("attributes").get("name")

        filename = f"providers/{provider_name}/{provider_name}.tf"

        os.makedirs(os.path.dirname(filename), exist_ok=True)

        provider_block = f'provider "{provider_name}" {{}}'

        with open(filename, "w") as f:
            f.write(provider_block)
