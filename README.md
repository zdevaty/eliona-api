# Eliona API #

The Eliona API provides an API to access resources within an Eliona environment.

## API specification ##

The API is defined by an OpenAPI specification file. The file is versioned to handle changes, that are not backward compatible. The current version of the API specification is v2.

## API documentation ##

There are 2 versions of the API available, a stable release version and a beta version, that is currently in development.

- [Eliona API v2 Release](https://api.eliona.io/)
- [Eliona API v2 Development](https://api.eliona.io/?yaml=https://raw.githubusercontent.com/eliona-smart-building-assistant/eliona-api/develop/openapi.yaml)

## Generation ##

### Generate single openapi.yaml file ###

To build the `openapi.yaml` file that contains the complete API definitions in one file you have to generate it with OpenAPI generator. This single file is needed for further code generation which is easier with one file instead of multiple files in different directories.

The easiest way to generate the `openapi.yaml` file is to use one of the predefined generation script which use the OpenAPI Generator Docker image.

```
.\generate.cmd # Windows
./generate.sh # Linux
```

If you want to use other generators take the necessary generator options from one of the scripts. See [OpenAPI Generator documentation](https://openapi-generator.tech/docs/generators/openapi-yaml) for further details.
