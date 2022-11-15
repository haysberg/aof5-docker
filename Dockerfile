FROM alpine:edge

RUN apk update && apk upgrade

RUN apk add openjdk17-jre-headless

WORKDIR /data

EXPOSE 25565

CMD /data/startserver.sh