gen-doc:
  sh scripts/gen-doc.sh

gen-py:
  openapi-generator-cli generate -i .\api\main.yaml -g python -o python
