# aof5-docker

```
---
version: "2.1"
services:
  modded-mc:
    image: ghcr.io/haysberg/aof5-docker:main
    container_name: modded-mc
    volumes:
      - /root/modmc:/data
    ports:
      - 42069:25565
    restart: unless-stopped
```