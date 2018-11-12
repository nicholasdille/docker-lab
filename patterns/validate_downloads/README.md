# Validate Downloads

When downloading packages from the internet, validate downloads using SHA256 checksums:

```Dockerfile
FROM ubuntu

# Install Docker Compose
ENV DOCKER_COMPOSE_VERSION=1.23.1 \
    DOCKER_COMPOSE_SHA256=c176543737b8aea762022245f0f4d58781d3cb1b072bc14f3f8e5bb96f90f1a2
RUN wget "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-Linux-x86_64" -O /usr/local/bin/docker-compose \
 && echo "${DOCKER_COMPOSE_SHA256} */usr/local/bin/docker-compose" | sha256sum -c - \
 && chmod +x /usr/local/bin/docker-compose
```

Create SHA256 checksums:

```bash
curl "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-Linux-x86_64" | sha256sum
```