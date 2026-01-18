#!/usr/bin/env sh
set -eu

docs_dir="docs"
spec_dir="api"
spec_src="$spec_dir/main.yaml"
spec_dst="$docs_dir/openapi.yaml"

mkdir -p "$docs_dir"
pnpm dlx @apidevtools/swagger-cli bundle "$spec_src" --dereference --type yaml --outfile "$spec_dst"

cat > "$docs_dir/index.html" <<'EOF'
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Bilibili OpenAPI</title>
  </head>
  <body>
    <div id="app"></div>
    <script src="https://cdn.jsdelivr.net/npm/@scalar/api-reference"></script>
    <script>
      Scalar.createApiReference('#app', { url: './openapi.yaml' })
    </script>
  </body>
</html>
EOF
