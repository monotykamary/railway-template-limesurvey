# Deploy and Host LimeSurvey on Railway

## About Hosting LimeSurvey

LimeSurvey is an open-source platform for surveys, questionnaires, branching logic, invitations, and response analysis. This template deploys stable 7.0.6+260722 with generated credentials and MariaDB.

Sign in with `ADMIN_USER` and `ADMIN_PASSWORD`.

## Common Use Cases

- Public and private surveys
- Research questionnaires and consent forms
- Event feedback and customer research

## Dependencies for LimeSurvey Hosting

### Deployment Dependencies

LimeSurvey and private MariaDB services use daily-backed-up volumes. Railway provides HTTPS.

### Implementation Details

The image installs through its CLI, uses a generated admin and database password, and receives persistent sodium key and nonce secrets. Registration is not an open user-signup flow. Use one application replica.

## Why Deploy LimeSurvey on Railway?

Railway provides generated credentials, private networking, HTTPS, persistent storage, backups, health checks, and Git-driven updates.
