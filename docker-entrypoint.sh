#!/bin/bash -l
set -e
if [ "$#" -eq 0 ]; then
  exec /gencert.sh
else
  exec "$@"
fi
