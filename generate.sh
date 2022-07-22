docker run --rm \
    -v "${PWD}:/local" \
    openapitools/openapi-generator-cli:v6.0.1 generate \
    -i /local/eliona-api.yaml \
    -g openapi-yaml \
    --additional-properties=outputFile=/local/openapi.yaml \
    -o /local