# Build versus Runtime Environment

Build tools are a security issue:

```bash
docker build --tag jre:8u181 .
docker run jre:8u181 -version
```