#!/usr/bin/env python3

import json
import os
import subprocess
import io


for item in os.scandir("providers"):

    out_bytes = False

    try:
        out_bytes = subprocess.check_output(
            ["terraform", "providers", "schema", "-json"],
            cwd=item.path,
            stderr=subprocess.STDOUT,
        )
    except subprocess.CalledProcessError as e:
        if "no suitable version installed" in e.output.decode("utf-8"):
            subprocess.run(
                ["terraform", "init"], cwd=item.path, stderr=subprocess.STDOUT
            )
            out_bytes = subprocess.check_output(
                ["terraform", "providers", "schema", "-json"],
                cwd=item.path,
                stderr=subprocess.STDOUT,
            )

    if out_bytes:

        f = io.BytesIO(out_bytes)
        data = json.load(f)

        resource_schemas = data.get("provider_schemas").get(item.name).get("resource_schemas")

        for resource_name, resource_schema in resource_schemas.items():

            snippet = []

            snippet.append("# -*- mode: snippet -*-")
            snippet.append(f"# name: r_{resource_name}")
            snippet.append(f"# key: r_{resource_name}")
            snippet.append("# --")

            snippet.append(f'resource "{resource_name}" "{{$1:name}}" {{')

            attributes = resource_schema.get("block").get("attributes")

            for pos, attribute in enumerate(attributes, start=2):
                snippet.append(f'    {attribute} = "{{${pos}:{attribute}}}"')

            snippet.append("}")

            with open(f"snippets/terraform-mode/r_{resource_name}", "w") as f:
                f.write("\n".join(snippet))

        data_source_schemas = data.get("provider_schemas").get(item.name).get("data_source_schemas")

        for data_source_name, data_source_schema in data_source_schemas.items():

            print()
            print("# -*- mode: snippet -*-")
            print(f"# name: r_{data_source_name}")
            print(f"# key: r_{data_source_name}")
            print("# --")

            print(f'data "{data_source_name}" "{{$1:name}}" {{')

            attributes = data_source_schema.get("block").get("attributes")

            for pos, attribute in enumerate(attributes, start=2):
                print(f'    {attribute} = "{{${pos}:{attribute}}}"')

            print("}")
