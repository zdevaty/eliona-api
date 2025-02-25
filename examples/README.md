# HTTP Requests and Postman Collection

This folder contains a set of HTTP request examples in IntelliJ format and a corresponding Postman collection for easy API testing.

## Contents

- ***.http files** - HTTP request examples in `.http` format, compatible with IntelliJ IDEA's HTTP client.
- **postman_collection.json** - A Postman collection containing all the HTTP examples, formatted for easy import into Postman.

## Usage

### Using IntelliJ IDEA
If you are using IntelliJ IDEA, you can directly open the `.http` files and execute the requests using the built-in HTTP client.

### Using Postman
1. Open Postman.
2. Click on **Import**.
3. Select the `postman_collection.json` file.
4. Configure the variables:
    - `api-server`: Set this to the API base URL.
    - `read-write-token`: Set this to your API key.
5. Run the requests from the imported collection.

## Authentication
The requests use API-Key authentication. Set your API key in `http-client.private.env.json` file for IntelliJ IDEA or in Postman's variable `read-write-token` to authenticate automatically.

## Notes
- The `api-server` variable allows for easy switching between environments.
