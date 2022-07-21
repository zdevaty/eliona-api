# Eliona API #

The Eliona API provides an API to access resources within an Eliona environment.

## API specification ##

The API is defined by an OpenAPI specification file. The file is versioned to handle changes, that are not backward compatible. The current version of the API specification is v2.

## API documentation ##

There are 2 versions of the API available, a stable release version and a beta version, that is currently in development.

- [Eliona API v2 Release](https://eliona-smart-building-assistant.github.io/open-api-docs/?https://raw.githubusercontent.com/eliona-smart-building-assistant/eliona-api/master/openapi.yaml)
- [Eliona API v2 Development](https://eliona-smart-building-assistant.github.io/open-api-docs/?https://raw.githubusercontent.com/eliona-smart-building-assistant/eliona-api/develop/openapi.yaml)

## Generate ##

To build the openapi.yaml file that contains all API definitions in one file you have to generate it with OpenAPI generator. See [OpenAPI Generator documentation](https://openapi-generator.tech/docs/generators/openapi-yaml) for further details.

At first, download the [Generator Jar](https://openapi-generator.tech/docs/installation#jar) file: `https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/6.0.0/openapi-generator-cli-6.0.0.jar` to any directory outside this project. Also, Java 8 runtime at a minimum is required.

Then you can generate the file with the following command.

```bash
java -jar .\openapi-generator-cli-6.0.0.jar generate \
  -g openapi-yaml \
  -i eliona-api.yaml \
  --additional-properties=outputFile=openapi.yaml
```