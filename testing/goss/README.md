# goss

## Installation

```bash
curl -fsSL https://goss.rocks/install | sh
```

## Validate container

Start you container using `dgoss` instead of `docker`... same parameters!

```bash
dgoss edit nginx
```

Automatically create tests for a given name:

```bash
goss autoadd nginx
```

Validate container (again... `dgoss` instead of `docker`):

```bash
dgoss run nginx
```

## Bake goss in

Run goss container to create it:

```bash
docker run --name goss aelsabbahy/goss goss
```

Mount goss into your container:

```bash
docker run -d --rm --volumes-from goss --name weby nginx
```

Add tests and evaluate definition:

```bash
docker exec weby /goss/goss autoadd nginx
docker cp weby:/goss.yaml .
```

## Using the goss base image

XXX