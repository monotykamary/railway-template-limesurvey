FROM docker.io/martialblog/limesurvey:7.1.1-260914-apache@sha256:9ec6e15c653460181e24a175dc2a8c4bdb4227a746233b2f7657f859ae1e0df8
USER root
COPY railway-entrypoint.sh /usr/local/bin/limesurvey-railway-entrypoint
RUN chmod +x /usr/local/bin/limesurvey-railway-entrypoint
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/limesurvey-railway-entrypoint"]
CMD ["apache2-foreground"]
