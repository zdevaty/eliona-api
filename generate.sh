docker run --rm \
    -v "${PWD}:/local" \
    openapitools/openapi-generator-cli:v7.0.0 generate \
    -i /local/eliona-api.yaml \
    -g openapi-yaml \
    --additional-properties=outputFile=/local/openapi.yaml \
    -o /local