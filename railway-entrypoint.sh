#!/bin/sh
set -eu
mkdir -p /var/www/html/upload
chown -R 33:33 /var/www/html/upload
exec setpriv --reuid=33 --regid=33 --clear-groups /usr/local/bin/entrypoint.sh "$@"
