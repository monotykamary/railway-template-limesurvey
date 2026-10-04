FROM docker.io/martialblog/limesurvey:7.4.0-260928-apache@sha256:e5157851dd0bbaaa4530601470939d4ee3eddb8554de4bff2389d46a498b61f6
USER root
COPY railway-entrypoint.sh /usr/local/bin/limesurvey-railway-entrypoint
RUN chmod +x /usr/local/bin/limesurvey-railway-entrypoint
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/limesurvey-railway-entrypoint"]
CMD ["apache2-foreground"]
