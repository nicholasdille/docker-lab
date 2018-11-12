# Network Management

XXX slide: bridge, host, overlay, none and plugins

How to publish a container port in the bridge network:

```bash
docker run -d -p 80:80 nginx
```

How to publish a container:

```bash
docker run -d --rm --network host nginx
```

## Network context

Containers in the same `docker-compose.yml` are deployed to the same network:

```bash
docker-compose up -d
docker exec -it svc2 sh
ping svc2
```

Containers launched over the mapped daemon socket do not end up in the same network context:

```bash
docker-compose --file docker-compose.context.yml up -d
docker run -d --name web2 nginx
```