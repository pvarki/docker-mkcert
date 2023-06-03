#!/bin/bash -l
set -e
if [ "$#" -eq 0 ]; then
  exec /bin/mkcert
else
  exec "$@"
fi
