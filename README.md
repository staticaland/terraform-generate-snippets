# terraform-generate-snippets

The source of
[yasnippet-terraform](https://github.com/staticaland/yasnippet-terraform).

This script generates YASnippet snippets based on Terraform provider
schemas. It works by parsing [`terraform providers schema
-json`](https://www.terraform.io/docs/commands/providers/schema.html)
and creates snippet files based on the JSON.

`generate_snippets.py make_provider_dirs` looks up all the providers
from the [Terraform registry
API](https://registry.terraform.io/v2/providers) and creates folders and
Terraform files for all of them (every Terraform file in the `providers`
directory).

`generate_snippets.py generate_snippets` run `terraform providers schema
-json` (and `terraform init` if needed). It will take quite a lot of
disk space and time to do the initial run. Subsequent runs should be
fast as the latest schema version is saved to disk.

It should be fairly trivial to extend this to support multiple snippet
systems.

## Flow

![](img/snippets.png)

## `generate_snippets.py -h`

``` stdout
usage: generate_snippets.py [-h] {generate_snippets,make_provider_dirs} ...

positional arguments:
  {generate_snippets,make_provider_dirs}

optional arguments:
  -h, --help            show this help message and exit
```

## Other

Snippet documentation for various editors:

  - [YASnippet](https://joaotavora.github.io/yasnippet/snippet-development.html)
  - [VSCode](https://code.visualstudio.com/docs/editor/userdefinedsnippets)
    follows the TextMate snippet syntax
