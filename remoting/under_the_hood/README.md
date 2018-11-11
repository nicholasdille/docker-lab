# Under the Hood

Separation of `dockerd` and `containerd`:

```bash
 4802 ?        Ssl   17:39 /usr/bin/containerd
24824 ?        Sl     0:00  \_ containerd-shim #...
24852 ?        Ssl    0:00      \_ registry serve /etc/docker/registry/config.yml
 4850 ?        Ssl   20:02 /usr/bin/dockerd -H unix://
```

`dockerd` cannot be restarted.