#!/bin/sh
set -eu
rm -f /etc/apache2/mods-enabled/mpm_event.load /etc/apache2/mods-enabled/mpm_event.conf
rm -f /etc/apache2/mods-enabled/mpm_worker.load /etc/apache2/mods-enabled/mpm_worker.conf
rm -f /etc/apache2/mods-enabled/mpm_prefork.load /etc/apache2/mods-enabled/mpm_prefork.conf
a2enmod mpm_prefork >/dev/null
# The Railway volume mounts over /var/www/html/upload and hides the image's packaged
# upload content (themes/survey, fonts). Seed it once when the volume is empty.
if [ ! -e /var/www/html/upload/themes/survey/vanilla ]; then
  mkdir -p /var/www/html/upload/themes
  cp -a /var/www/html/themes/survey /var/www/html/upload/themes/survey
  find /var/www/html/upload/themes -name "index.html" -exec touch {} +
fi
chown -R 33:33 /var/www/html/upload
# The upstream entrypoint must start Apache as root so it can open its logs and
# then drop the workers to www-data. Forcing the whole entrypoint to UID 33 makes
# Apache fail with "could not open error log file /var/log/apache2/error.log".
exec /usr/local/bin/entrypoint.sh "$@"
