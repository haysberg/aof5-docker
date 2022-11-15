FROM alpine:edge

RUN apk update && apk upgrade

RUN apk install openjdk-19-jre-headless

COPY All-of-Fabric-5-Server-2.0.6.zip /data

RUN unzip /data/All-of-Fabric-5-Server-2.0.6.zip

EXPOSE 25565

CMD /data/startserver.sh