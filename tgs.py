#!/usr/bin/env python3

import json
import os
import subprocess
import io
import pathlib
import sys

import jinja2


class color:
    PURPLE = "\033[95m"
    CYAN = "\033[96m"
    DARKCYAN = "\033[36m"
    BLUE = "\033[94m"
    GREEN = "\033[92m"
    YELLOW = "\033[93m"
    RED = "\033[91m"
    BOLD = "\033[1m"
    UNDERLINE = "\033[4m"
    END = "\033[0m"


JINJA_TEMPLATE = """# -*- mode: snippet -*-
# name: [[thing_short]]_[[name]]
# key: [[thing_short]]_[[name]]
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

        if "Could not load plugin" in e.output.decode(sys.stdout.encoding):

            try:
                print()
                print(f"{color.YELLOW}Running {color.BOLD}`terraform init´{color.END}")
                subprocess.check_output(
                    ["terraform", "init"], cwd=provider_path, stderr=subprocess.STDOUT
                )
            except subprocess.CalledProcessError as e:
                print(f"{color.RED}This one failed...{color.END}")
                print(e.output.decode(sys.stdout.encoding))
                return

            try:
                print(f"{color.YELLOW}Trying to run `terraform providers schema -json` again{color.END}")
                out_bytes = subprocess.check_output(
                    cmd,
                    cwd=provider_path,
                    stderr=subprocess.STDOUT,
                )
            except subprocess.CalledProcessError as e:
                print(f"{color.RED}This one failed...{color.END}")
                print(e.output.decode(sys.stdout.encoding))
                return

            return out_bytes


def make_jinja2_template():

    environment = jinja2.Environment(
        loader=jinja2.BaseLoader(),
        block_start_string="[%",
        block_end_string="%]",
        variable_start_string="[[",
        variable_end_string="]]",
        autoescape=False,
        trim_blocks=True,
    )

    return environment.from_string(JINJA_TEMPLATE)


def main():
    """
    Scans through the providers directory (generated by `all_providers.py`). Runs `terraform init` if needed. Runs
    `terraform providers schema -json`. Puts the data through a Jinja2 template and writes the snippet to disk.
    """

    for dir_entry in os.scandir("providers"):

        print()
        print("=" * 10)
        print(
            f"About to run {color.BOLD}`terraform providers schema -json`{color.END} in {dir_entry.path}"
        )
        json_schema_bytes = get_terraform_schema(dir_entry.path)

        if json_schema_bytes:

            f = io.BytesIO(json_schema_bytes)
            provider_schemas = json.load(f).get("provider_schemas")

            # Get the first dict key
            schemas = next(iter(provider_schemas.values()))

            resource_schemas = schemas.get("resource_schemas", {})

            data_source_schemas = schemas.get("data_source_schemas", {})

            template = make_jinja2_template()

            print(
                f"Loaded schema JSON for {dir_entry.name} - templating and writing snippet files"
            )

            for resource_name, resource_schema in resource_schemas.items():

                attributes = resource_schema.get("block").get("attributes")
                attributes = [
                    a for a in attributes if attributes.get(a).get("required") == True
                ]

                snippet = template.render(
                    thing="resource",
                    thing_short="r",
                    name=resource_name,
                    enumerated_attributes=enumerate(attributes, start=2),
                )

                filename = f"snippets/terraform-mode/{dir_entry.name}/resource/r_{resource_name}"
                os.makedirs(os.path.dirname(filename), exist_ok=True)
                with open(filename, "w") as f:
                    f.write(snippet)

            for data_source_name, data_source_schema in data_source_schemas.items():

                attributes = data_source_schema.get("block").get("attributes")
                attributes = [
                    a for a in attributes if attributes.get(a).get("required") == True
                ]

                snippet = template.render(
                    thing="data",
                    thing_short="d",
                    name=data_source_name,
                    enumerated_attributes=enumerate(attributes, start=2),
                )

                filename = f"snippets/terraform-mode/{dir_entry.name}/data/d_{data_source_name}"
                os.makedirs(os.path.dirname(filename), exist_ok=True)
                with open(filename, "w") as f:
                    f.write(snippet)

        print("=" * 10)

    pathlib.Path("snippets/terraform-mode/.yas-make-groups").touch()


if __name__ == "__main__":

    main()
