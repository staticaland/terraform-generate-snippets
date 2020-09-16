Generate editor snippets based on Terraform provider schemas (such as
[AWS](https://github.com/terraform-providers/terraform-provider-aws/tree/master/aws)).

Parses [`terraform providers schema
-json`](https://www.terraform.io/docs/commands/providers/schema.html) and
creates snippet files based on the JSON.

- [x] YASnippet support
- [x] Support templates for multiple engines
- [ ] Only keep required attributes

Currently only supporting AWS and Azure for
[YASnippet](https://github.com/joaotavora/yasnippet), but should be fairly easy
to extend.

