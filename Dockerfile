FROM docker.io/martialblog/limesurvey:7.5.1-261021-apache@sha256:301a66d1b481ac3562619beb667332762402db66ebe5008fa2d5a860b7f099c9
USER root
COPY railway-entrypoint.sh /usr/local/bin/limesurvey-railway-entrypoint
RUN chmod +x /usr/local/bin/limesurvey-railway-entrypoint
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/limesurvey-railway-entrypoint"]
CMD ["apache2-foreground"]
