FROM docker.io/martialblog/limesurvey:7.5.1-261007-apache@sha256:7a35ba0aafd8f24732a3b301cc123a7948da9650f0e7d40dbd3237b4b90ed2b6
USER root
COPY railway-entrypoint.sh /usr/local/bin/limesurvey-railway-entrypoint
RUN chmod +x /usr/local/bin/limesurvey-railway-entrypoint
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/limesurvey-railway-entrypoint"]
CMD ["apache2-foreground"]
