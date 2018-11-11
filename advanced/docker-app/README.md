# docker-app

Home: https://github.com/docker/app

## Installation

```bash
curl -Ls https://github.com/docker/app/releases/download/v0.6.0/docker-app-linux.tar.gz | tar -xvz
mv docker-app-linux /usr/local/bin/docker-app
source <(docker-app completion bash)
```

## Preparation

Start local registry:

```bash
docker run -d -p 5000:5000 registry:2
git clone XXX
```

## Creation

XXX

```bash
docker-app init --single-app test
# edit
docker-app render
docker-app push --namespace nicholasdille --tag 1.0 ci-cd-demo
docker-app push --repo localhost:5000/nicholasdille/ci-cd-demo --tag 1.0 ci-cd-demo
```

# Deployment

XXX

```bash
docker-app inspect nicholasdille/ci-cd-demo:1.0
docker-app render nicholasdille/ci-cd-demo:1.0 | docker-compose -f - up -d
```

# Reuse

XXX

```bash
docker-app fork nicholasdille/ci-cd-demo:1.0
```

# Internals

Stores like an image

Manifest links to boring image configuration and single layer

```bash
# Image configuration is boring
CONFIG_DIGEST=$(curl -sH "Accept: application/vnd.docker.distribution.manifest.v2+json" http://localhost:5000/v2/nicholasdille/ci-cd-demo.dockerapp/manifests/1.0 | jq --raw-output '.config.digest')

# Layer contains packaged app
LAYER_DIGEST=$(curl -sH "Accept: application/vnd.docker.distribution.manifest.v2+json" http://localhost:5000/v2/nicholasdille/ci-cd-demo.dockerapp/manifests/1.0 | jq --raw-output '.layers[0].digest')

# Download from registry
curl -o - http://localhost:5000/v2/nicholasdille/ci-cd-demo.dockerapp/blobs/${LAYER_DIGEST} | tar -tvz
```