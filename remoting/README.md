# Remoting

1. [Unter the hood](under_the_hood)
1. [Engine API](engine_api)
1. [docker-machine](docker-machine)
1. [SSH](ssh)

## Using different version of Docker CLI

```bash
docker run -it --rm --volume /var/run/docker.sock:/var/run/docker.sock docker:18.06 docker version
```