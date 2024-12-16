gen-doc:
  npx @redocly/cli build-docs api/main.yaml

gen-py:
  openapi-generator-cli generate -i .\api\main.yaml -g python -o python
