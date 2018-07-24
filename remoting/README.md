# Remoting

Using different Docker CLI:

```
$ docker run -it --rm --volume /var/run/docker.sock:/var/run/docker.sock docker:18.06 docker version
```