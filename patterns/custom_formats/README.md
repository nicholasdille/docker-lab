# Custom Formats

Use a condensed output for containers:

```bash
docker ps --format "table {{.Names}}\\t{{.Image}}\\t{{.Status}}\t{{.Ports}}"
```

Store the configuration in `~/.docker/config.json`:

```json
{
    "psFormat":"table {{.Names}}\\t{{.Image}}\\t{{.Status}}\t{{.Ports}}"
}
```