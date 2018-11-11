# Privileged Containers

Running privileged containers:

```bash
docker run -d --rm --privileged docker:stable-dind
```

Host breakout from privileged container:

```bash
docker run --rm --privileged --pid=host -it alpine:3.8 \
    nsenter -t 1 -m -u -n -i sh
```

Specifying required capabilities:

```bash
docker run -it --rm --cap-add SYS_ADMIN ubuntu
```

Check default capabilities of processes in privileged container:

```bash
docker run --rm --privileged ubuntu:xenial bash -c 'getpcaps $$'
```

Drop all capabilities if not required:

```bash
docker run --rm --privileged ubuntu:xenial bash -c 'capsh --inh="" --drop="all" -- -c "getpcaps $$"'
```