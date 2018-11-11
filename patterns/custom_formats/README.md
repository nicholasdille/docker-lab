# Custom Formats

XXX

```
docker ps --format "table {{.Names}}\\t{{.Image}}\\t{{.Status}}"
```

XXX

```
cat ~/.docker/config.json
{
#...
"psFormat":"table {{.Names}}\\t{{.Image}}\\t{{.Status}}"
#...
}
```