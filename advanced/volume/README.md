# Volume Management

Bind mounting a host-local directory:

```bash
docker run -it --rm --volume $PWD:/src ubuntu
```

Mounting a volumes:

```bash
docker volume create myvol
docker volume ls
docker volume inspect myvol
docker -it --rm --volume myvol:/src ubuntu
```

Access permissions:

```bash
docker -it --rm --volume myvol:/src:ro ubuntu
```

Real temporary data:

```bash
docker -it --rm --tmpfs /src ubuntu
```

See also [sshfs](https://github.com/vieux/docker-volume-sshfs).

See also [container native builds](https://github.com/nicholasdille/docker-lab/tree/master/ci/container_native).