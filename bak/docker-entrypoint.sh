#!/bin/bash
set -eo pipefail
shopt -s nullglob

if [ "$1" = 'python' ]; then
    $1 $2 collectstatic
fi

exec "$@"
