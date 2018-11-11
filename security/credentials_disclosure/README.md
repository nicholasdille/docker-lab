# Credential Disclosure

Credentials are persisted in "lower" layers:

```Dockerfile
FROM ubuntu

ADD id_rsa /root/.ssh/
RUN scp user@somewhere:/tmp/data .
RUN rm /root/.ssh/id_rsa
```

Docker 18.09 adds SSH agent forwarding for builds.