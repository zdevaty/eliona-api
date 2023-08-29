docker run --rm ^
    -v "%cd%":/local ^
    openapitools/openapi-generator-cli:v7.0.0 generate ^
    -g openapi-yaml ^
    -i /local/eliona-api.yaml ^
    -o /local ^
    --additional-properties=outputFile=/local/openapi.yaml
