#!/bin/sh
set -e

export REAL_HOST=$(cat ${HOST_ETC}/hostname | tr -d '\n')

if [ "${1:0:1}" = '-' ]; then
    set -- telegraf "$@"
fi

exec "$@"
