FROM        python:3.6-alpine

LABEL       author="Ioannis Karamperis" maintainer="ioannis@fragnet.net"

RUN         apk add --no-cache --update \
            && adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/ash", "/entrypoint.sh"]
