# LimeSurvey on Railway

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/limesurvey?referralCode=ZqgrJ0)

Deploy LimeSurvey 7.0.12+260833 with generated administrator, stable encryption keys, private MariaDB, and daily backups. The verified button is added after publication.

Sign in at `/index.php/admin` with `ADMIN_USER` and `ADMIN_PASSWORD`. Survey uploads and MariaDB persist. Run one application replica because uploads use one attached volume.

Upstream: https://github.com/LimeSurvey/LimeSurvey/tree/7.0.12%2B260833 (GPL-2.0-or-later). Container maintained by martialblog. Not affiliated with Railway.

Container note: upstream LimeSurvey 7.0.13+260903 is released, but the matching martialblog container image is not published yet. This template pins the newest published image (7.0.12+260833) and follows when the container build appears.
