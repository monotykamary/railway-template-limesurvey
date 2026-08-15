FROM docker.io/martialblog/limesurvey:7.0.9-260812-apache@sha256:c553bac7393547960bb31e308ea78c77e10562de5e9bc32fa3b88b2c8c1e72d3
USER root
COPY railway-entrypoint.sh /usr/local/bin/limesurvey-railway-entrypoint
RUN chmod +x /usr/local/bin/limesurvey-railway-entrypoint
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/limesurvey-railway-entrypoint"]
CMD ["apache2-foreground"]
