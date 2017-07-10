#!/bin/bash
set -e

export REAL_HOST=$(cat /etc/hostname | tr -d '\n')

if [ "${1:0:1}" = '-' ]; then
    set -- telegraf "$@"
fi

exec "$@"
