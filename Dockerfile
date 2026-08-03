FROM docker.io/martialblog/limesurvey:7.0.6-260722-apache@sha256:afe1aa6a2ddd80f63bd42d56275ad259e5ffcdb83fb1f381cfc1ddf74e8ebbe1
USER root
COPY railway-entrypoint.sh /usr/local/bin/limesurvey-railway-entrypoint
RUN chmod +x /usr/local/bin/limesurvey-railway-entrypoint
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/limesurvey-railway-entrypoint"]
CMD ["apache2-foreground"]
