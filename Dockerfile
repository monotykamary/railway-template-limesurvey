FROM docker.io/martialblog/limesurvey:7.0.12-260833-apache@sha256:3cb98712cf803a25fb2a70657d6c6fdb8e50caae3703ade28b65b9a0baacdcbd
USER root
COPY railway-entrypoint.sh /usr/local/bin/limesurvey-railway-entrypoint
RUN chmod +x /usr/local/bin/limesurvey-railway-entrypoint
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/limesurvey-railway-entrypoint"]
CMD ["apache2-foreground"]
