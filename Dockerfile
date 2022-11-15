FROM alpine:edge

RUN apk update && apk upgrade

RUN apk add openjdk17-jre-headless

RUN apk add unzip

COPY All-of-Fabric-5-Server-2.0.6.zip /data

RUN unzip /data/All-of-Fabric-5-Server-2.0.6.zip

EXPOSE 25565

CMD /data/startserver.sh