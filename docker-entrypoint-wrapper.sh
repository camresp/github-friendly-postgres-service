#!/usr/bin/env bash
set -eux
if [[ -v "PG_EXTRA_STARTUP_ARGS" ]]; then
    exec /docker-entrypoint.sh $PG_EXTRA_STARTUP_ARGS "$@"
else
    exec /docker-entrypoint.sh "$@" 
fi

