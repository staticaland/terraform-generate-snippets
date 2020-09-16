#!/usr/bin/env python3

import json
import os
import subprocess
import io

import jinja2

JINJA_TEMPLATE = """
# -*- mode: snippet -*-
# name: r_[[name]]
# key: r_[[name]]
# --

[[thing]] "[[name]]" "${1:this}" {
[% for pos, a in enumerated_attributes %]
    [[a]] = "${[[pos]]:[[a]]}"
[% endfor %]
}
"""


def get_terraform_schema(provider_path):

    cmd = ["terraform", "providers", "schema", "-json"]

    try:

        out_bytes = subprocess.check_output(
            cmd,
            cwd=provider_path,
            stderr=subprocess.STDOUT,
        )

        return out_bytes

    except subprocess.CalledProcessError as e:

        if "Could not load plugin" in e.output.decode("utf-8"):

            subprocess.run(
                ["terraform", "init"], cwd=provider_path, stderr=subprocess.STDOUT
            )

            out_bytes = subprocess.check_output(
                cmd,
                cwd=provider_path,
                stderr=subprocess.STDOUT,
            )

            return out_bytes

        raise


def main():

    for dir_entry in os.scandir("providers"):

        print(f"About to run `terraform providers schema -json` in {dir_entry.path}")
        json_schema_bytes = get_terraform_schema(dir_entry.path)

        if json_schema_bytes:

            f = io.BytesIO(json_schema_bytes)
            provider_schemas = json.load(f).get("provider_schemas")

            # Get the first dict key
            schemas = next(iter(provider_schemas.values()))

            resource_schemas = schemas.get("resource_schemas")

            data_source_schemas = schemas.get("data_source_schemas")

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

            print(f"Loaded schema JSON for {dir_entry.name} - templating and writing snippet files")

            for resource_name, resource_schema in resource_schemas.items():

                snippet = template.render(
                    thing="resource",
                    name=resource_name,
                    enumerated_attributes=enumerate(
                        resource_schema.get("block").get("attributes"), start=2
                    ),
                )

                with open(
                    f"snippets/terraform-mode/r_{resource_name}", "w"
                ) as f:
                    f.write(snippet)

            for data_source_name, data_source_schema in data_source_schemas.items():

                snippet = template.render(
                    thing="data",
                    name=data_source_name,
                    enumerated_attributes=enumerate(
                        data_source_schema.get("block").get("attributes"), start=2
                    ),
                )

                with open(
                    f"snippets/terraform-mode/d_{data_source_name}",
                    "w",
                ) as f:
                    f.write(snippet)


if __name__ == "__main__":

    main()
