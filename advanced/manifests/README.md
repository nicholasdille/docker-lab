# Image Manifests

https://docs.docker.com/registry/spec/manifest-v2-2/

```
$ curl -sLH "Accept: application/vnd.docker.distribution.manifest.v2+json" http://localhost:5000/v2/groot/ubuntu/manifests/latest
$ curl -L http://localhost:5000/v2/groot/ubuntu/blobs/sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641 | wc -c
$ curl -L http://localhost:5000/v2/groot/ubuntu/blobs/sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641 | sha256sum
$ curl -sLH "Accept: application/vnd.docker.container.image.v1+json" http://localhost:5000/v2/groot/ubuntu/manifests/latest
```