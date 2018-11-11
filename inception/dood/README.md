# Docker-out-of-Docker (dood)

Mapping the daemon socket:

```bash
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock docker:18.06 docker version
```