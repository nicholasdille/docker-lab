# Readability beats size

1. Add comments to sections of your `Dockerfile`

1. Define versions at the top

    ```Dockerfile
    FROM ubuntu

    ENV \
        DOCKER_VERSION=18.09 \
        DOCKER_COMPOSE_VERSION=1.23.1
    ```

1. Split commands over multiple lines to improved diff views

    ```Dockerfile
    FROM ubuntu

    RUN apt-get update \
     && apt-get -y install \
            curl \
            unzip \
            jq
    ```

1. Create command groups:

    ```Dockerfile
    FROM ubuntu

    # Install Docker
    RUN apt-get -y install docker-ce

    # Install docker-compose
    RUN wget "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-Linux-x86_64" -O /usr/local/bin/docker-compose
    ```