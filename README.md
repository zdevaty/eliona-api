# Eliona REST API #

The Eliona REST API enables unified access to the resources and data of an Eliona environment.

## API Specification ##

The API is defined by an OpenAPI specification. This specification has a main version to handle changes, that are not backward compatible. The current main version is v2. All changes that are backward compatible have to result in an increased version depending on whether it's a minor and major change.

In view of a simplified editing the specification is partitioned into multiple files. The file `eliona-api.yaml` combines all the other files grouped by `parameters`, `paths` and `schemas`.

- [Eliona API v2 Release](https://api.eliona.io/)

## Generation ##

Each new version of the Eliona REST API specification requires a list of further generation steps. These steps ensure, that the version is available in the API implementation itself and in all dependent modules.

#### 1. Generate single openapi.yaml file ####

Because the OpenAPI specification is partitioned into multiple files, a single `openapi.yaml` file that contains the complete API definition in one must be generated. This single file is needed for further code generation which is easier using one file instead of multiple files in different directories.

The easiest way to generate the `openapi.yaml` file is to use one of the predefined generation scripts `generate.cmd` or `generate.sh` which use the [OpenAPI Generator](https://openapi-generator.tech/docs/generators/openapi-yaml) Docker image.

After generating the `openapi.yaml` the new version (e.g. `v2.4.1`) must be committed and pushed to GitHub Repository. After this, the latest specification is available for further processing via the raw file link `https://raw.githubusercontent.com/eliona-smart-building-assistant/eliona-api/develop/openapi.yaml`.

#### 2. Generate API server stub ####

To implement the changes made to the API specification, you have to (re-)generate the source code for the API server. The API server is a private repository which covers all the implementation to access an Eliona environment. A documentation how to generate the server source code is included in the API server repository.

After generating the API server repository should be tagged with the current API version (e.g. `v2.4.1`).

#### 3. Generate API clients ####

The Eliona App SDK provides predefined clients for use in apps. The clients simplify the access to the API for different languages. So each client must be (re-)generate to include the changes made in the API specification. A documentation how to generate the client source code is included in the client repositories.

The following clients exists:
- [Go API client](https://github.com/eliona-smart-building-assistant/go-eliona-api-client)
- [Python API client](https://github.com/eliona-smart-building-assistant/python-eliona-api-client)

After generating the clients the repositories should be tagged with the current API version (e.g. `v2.4.1`).
