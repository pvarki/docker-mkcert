mkcert Submodule
=================

This submodule contains a script for generating SSL/TLS certificates using the `mkcert` tool.

Superceded by miniwerk
----------------------

https://github.com/pvarki/python-rasenmaeher-miniwerk now handles what we used to and does it better.


Usage in docker-compose-local.yml
---------------------------------

The `mkcert` submodule is used in the `docker-compose-local.yml` file to generate SSL/TLS certificates for the local development environment.

Usage is by defining `SERVER_DOMAIN`
