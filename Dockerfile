FROM docker.io/martialblog/limesurvey:7.1.2-260917-apache@sha256:cdc8ff1c39d006e85379bd873686a3245f35da8def40f26dd673e27437226a31
USER root
COPY railway-entrypoint.sh /usr/local/bin/limesurvey-railway-entrypoint
RUN chmod +x /usr/local/bin/limesurvey-railway-entrypoint
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/limesurvey-railway-entrypoint"]
CMD ["apache2-foreground"]
