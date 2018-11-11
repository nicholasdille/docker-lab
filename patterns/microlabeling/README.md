# Microlabeling

Create image with microlabels:

```bash
docker build \
    --build-arg IMAGE_NAME=microlabeling \
    --build-arg IMAGE_VERSION=1.0 \
    --build-arg SOURCE_REPO=none \
    --build-arg SOURCE_REVISION=1.0 \
    --tag microlabels \
    .
```

Check correct labels:

```bash
docker inspect microlabels
```

Note: Breaks build cache.