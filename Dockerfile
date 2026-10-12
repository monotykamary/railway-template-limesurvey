FROM docker.io/martialblog/limesurvey:7.5.0-261001-apache@sha256:94303f82bf861bf43d1cf710be083747443650b0f64ecf937cc37711b8ecd4a5
USER root
COPY railway-entrypoint.sh /usr/local/bin/limesurvey-railway-entrypoint
RUN chmod +x /usr/local/bin/limesurvey-railway-entrypoint
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/limesurvey-railway-entrypoint"]
CMD ["apache2-foreground"]
