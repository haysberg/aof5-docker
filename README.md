# aof5-docker

Useful to run docker containers with modpacks

```yaml
---
version: "2.1"
services:
  modded-mc:
    image: ghcr.io/haysberg/javamc-docker:java21
    container_name: modded-mc
    stdin_open: true # docker run -i
    tty: true        # docker run -t
    volumes:
      - /root/modmc:/data
    ports:
      - 42069:25565
    restart: unless-stopped
```
