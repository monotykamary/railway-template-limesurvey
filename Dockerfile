FROM docker.io/martialblog/limesurvey:7.0.10-260813-apache@sha256:69b2b828a2fe56728f5a1516eabaeebba38fdaaa10b78aab813a49c48d59ff2e
USER root
COPY railway-entrypoint.sh /usr/local/bin/limesurvey-railway-entrypoint
RUN chmod +x /usr/local/bin/limesurvey-railway-entrypoint
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/limesurvey-railway-entrypoint"]
CMD ["apache2-foreground"]
