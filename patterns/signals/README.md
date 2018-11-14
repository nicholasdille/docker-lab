# Signals

## Slide 1

```Dockerfile
FROM ubuntu:xenial-20180123

RUN apt-get update \
 && apt-get -y install nginx

ENTRYPOINT [ "nginx", "-g", "daemon=off;" ]
```

## Slide 2

```Dockerfile
FROM ubuntu:xenial-20180123

RUN apt update \
 && apt install -y nginx

ADD entrypoint.sh /

ENTRYPOINT /entrypoint.sh
```

```bash
#!/bin/bash

#...

exec nginx -g daemon=off;
```

## Slide 3

```Dockerfile
FROM ubuntu:xenial-20180123

RUN apt update \
 && apt install -y \
        nginx \
        supervisor

ADD nginx.conf /etc/supervisor/conf.d/

ENTRYPOINT [ "supervisord" ]
```

nginx.conf

```
[program:nginx]
command=nginx -g daemon=off;
```