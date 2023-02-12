FROM alpine:edge

RUN apk update && apk upgrade

RUN apk add openjdk8-jre

WORKDIR /data

EXPOSE 25565

CMD /data/startserver.sh
