FROM alpine:edge

RUN apk update && apk upgrade 

RUN apk add openjdk21-jre-headless bash

ENV SHELL=/bin/bash

WORKDIR /data

EXPOSE 25565

ENTRYPOINT ["/bin/bash", "-c"]
CMD /data/startserver.sh