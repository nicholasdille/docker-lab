# Run as USER

Limit container to user context:

```bash
docker build --tag groot .
```

Temporarily limit container to user context:

```bash
docker run --it --rm --user "1234:1234" ubuntu
```

See also file permissions.

For derived images, switch back to root:

```Dockerfile
FROM groot

USER root

RUN apt-get update \
 && apt-get -y install jq

USER groot
```