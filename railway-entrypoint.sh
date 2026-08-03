#!/bin/sh
set -eu
rm -f /etc/apache2/mods-enabled/mpm_event.load /etc/apache2/mods-enabled/mpm_event.conf
rm -f /etc/apache2/mods-enabled/mpm_worker.load /etc/apache2/mods-enabled/mpm_worker.conf
rm -f /etc/apache2/mods-enabled/mpm_prefork.load /etc/apache2/mods-enabled/mpm_prefork.conf
a2enmod mpm_prefork >/dev/null
mkdir -p /var/www/html/upload
chown -R 33:33 /var/www/html/upload
exec setpriv --reuid=33 --regid=33 --clear-groups /usr/local/bin/entrypoint.sh "$@"
