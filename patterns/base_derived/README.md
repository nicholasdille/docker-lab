# Base and derived images

Create base images to isolate functionality and enable reusability:

```bash
docker build --tag base ./base
```

Derive image from your base:

```bash
docker build --tag derived ./derived
```