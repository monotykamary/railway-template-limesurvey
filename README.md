# LimeSurvey on Railway

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/limesurvey?referralCode=ZqgrJ0)

Deploy LimeSurvey 7.4.0+260928 with generated administrator, stable encryption keys, private MariaDB, and daily backups. The verified button is added after publication.

Sign in at `/index.php/admin` with `ADMIN_USER` and `ADMIN_PASSWORD`. Survey uploads and MariaDB persist. Run one application replica because uploads use one attached volume.

Upstream: https://github.com/LimeSurvey/LimeSurvey/tree/7.4.0%2B260928 (GPL-2.0-or-later). Container maintained by martialblog. Not affiliated with Railway.

Container note: this template pins the newest published martialblog container image (7.4.0-260928), which tracks upstream LimeSurvey 7.4.0+260928.
