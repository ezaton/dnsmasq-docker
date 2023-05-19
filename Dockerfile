FROM alpine:latest

LABEL maintainer="Etzion Bar Noy <etzion@barnoy.co.il>"
LABEL builder="Etzion Bar Noy"
LABEL GitHubPage="https://github.com/ezaton/dnsmasq"

ENV PUID=0
ENV PGID=0

COPY start.sh .
RUN mkdir /config && \
    apk add --no-cache curl bash dnsmasq && rm -rf /var/cache/apk/*

ENTRYPOINT ["bash", "/start.sh"]
CMD [""]
