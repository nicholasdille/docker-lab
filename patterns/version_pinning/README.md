# Version Pinning versus Using Latest

It depends ;-)

## Version pinning

Manage versions explicitly:

```Dockerfile
FROM ubuntu:bionic-20181018

RUN apt-get update \
 && apt-get -y install docker-ce=18.09.*
```

## Use latest

Update on every build:

```Dockerfile
FROM ubuntu:bionic

RUN apt-get update \
 && apt-get -y install docker-ce
```