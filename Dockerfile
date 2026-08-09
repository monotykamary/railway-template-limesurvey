FROM docker.io/martialblog/limesurvey:7.0.7-260729-apache@sha256:556d09839640f4702ee5ef6618a426c68f0688ded967b2805a0bd903a241f051
USER root
COPY railway-entrypoint.sh /usr/local/bin/limesurvey-railway-entrypoint
RUN chmod +x /usr/local/bin/limesurvey-railway-entrypoint
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/limesurvey-railway-entrypoint"]
CMD ["apache2-foreground"]
