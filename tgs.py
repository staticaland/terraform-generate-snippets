#!/usr/bin/env python3

import json
import os
import subprocess
import io


def make_data_source_snippet(data_source_schemas):

    for data_source_name, data_source_schema in data_source_schemas.items():

        yield ("# -*- mode: snippet -*-")
        yield (f"# name: r_{data_source_name}")
        yield (f"# key: r_{data_source_name}")
        yield ("# --")

        yield (f'data "{data_source_name}" "{{$1:name}}" {{')

        attributes = data_source_schema.get("block").get("attributes")

        for pos, attribute in enumerate(attributes, start=2):
            yield (f'    {attribute} = "{{${pos}:{attribute}}}"')

        yield ("}")


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

        if "no suitable version installed" in e.output.decode("utf-8"):

            subprocess.run(
                ["terraform", "init"], cwd=provider_path, stderr=subprocess.STDOUT
            )

            out_bytes = subprocess.check_output(
                cmd,
                cwd=provider_path,
                stderr=subprocess.STDOUT,
            )

            return out_bytes


def write_snippet_to_path(snippet):

    snippet_type = "hello"
    snippet_name = "hello"

    with open(f"snippets/terraform-mode/{snippet_type}_{snippet_name}", "w") as f:
        f.write("\n".join(snippet))


def main():

    for dir_entry in os.scandir("providers"):

        print(dir_entry.path)

        json_schema_bytes = get_terraform_schema(dir_entry.path)

        if json_schema_bytes:

            f = io.BytesIO(json_schema_bytes)
            provider_schemas = json.load(f).get("provider_schemas")

            resource_schemas = (
                provider_schemas.get(dir_entry.name).get("resource_schemas")
            )

            for resource_name, resource_schema in resource_schemas.items():

                snippet = []

                snippet.append("# -*- mode: snippet -*-")
                snippet.append(f"# name: r_{resource_name}")
                snippet.append(f"# key: r_{resource_name}")
                snippet.append("# --")

                snippet.append(f'resource "{resource_name}" "${{1:name}}" {{')


                attributes = resource_schema.get("block").get("attributes")

                for pos, attribute in enumerate(attributes, start=2):
                    if attributes.get(attribute).get("required") == True:
                        snippet.append(f'    {attribute} = "${{{pos}:{attribute}}}"')

                snippet.append("}")

                with open(f"snippets/terraform-mode/r_{resource_name}", "w") as f:
                    f.write("\n".join(snippet))

            data_source_schemas = (
                provider_schemas.get(dir_entry.name).get("data_source_schemas")
            )

            print("\n".join(make_data_source_snippet(data_source_schemas)))


if __name__ == "__main__":

    main()
