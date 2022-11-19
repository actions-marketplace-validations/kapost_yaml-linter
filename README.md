# kapost-yaml-linter
This action runs a YAML Linter on YAML files in the repository

# Usage
See [yaml-linter.yml](.github/workflows/yaml-linter.yml)

```yaml
on: push
name: Yaml Lint
jobs:
  yaml_lint:
    name: Yaml Lint
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      
      - name: Yaml Lint
        uses: kapost/yaml-linter@v1
        env:
          CUSTOM_CONFIG: custom-yaml.yml # <-- Optional
          TARGET_DIRECTORY: ./my-directory # <-- Optional
```

## Changeable Variables
`CUSTOM_CONFIG` - **not required**: This variable allows for a custom config to be specified - the full path must be provided although it is easier to have the config file at the root level of the repository

`TARGET_DIRECTORY`- **not required**: This variable allows for a specific directory to be targeted for linting

## Additonal Information
### `Default` .yamllint configuration
```yaml
---
yaml-files:
  - '*.yaml'
  - '*.yml'
  - '.yamllint'

rules:
  braces: enable
  brackets: enable
  colons: enable
  commas: enable
  comments:
    level: warning
  comments-indentation:
    level: warning
  document-end: disable
  document-start:
    level: warning
  empty-lines: enable
  empty-values: disable
  float-values: disable
  hyphens: enable
  indentation: enable
  key-duplicates: enable
  key-ordering: disable
  line-length: enable
  new-line-at-end-of-file: enable
  new-lines: enable
  octal-values: disable
  quoted-strings: disable
  trailing-spaces: enable
  truthy:
    level: warning
```

### `Relaxed` .yamllint configuration
```yaml
---
yaml-files:
  - '*.yaml'
  - '*.yml'
  - '.yamllint'

rules:
  braces: enable
  brackets: enable
  colons: enable
  commas: enable
  comments:
    level: warning
  comments-indentation:
    level: warning
  document-end: disable
  document-start:
    level: warning
  empty-lines: enable
  empty-values: disable
  float-values: disable
  hyphens: enable
  indentation: enable
  key-duplicates: enable
  key-ordering: disable
  line-length: enable
  new-line-at-end-of-file: enable
  new-lines: enable
  octal-values: disable
  quoted-strings: disable
  trailing-spaces: enable
  truthy:
    level: warning
```

For custom config information refer to the [Yaml Lint configuration documentation](https://yamllint.readthedocs.io/en/stable/configuration.html)
