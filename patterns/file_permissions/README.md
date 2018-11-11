# File Permissions on Volumes

Issue caused by volume mounts:

```bash
$ docker run --rm --volume $PWD:/src --workdir /src ubuntu touch newfile
$ ls -l
total 648
-rw-r--r--. 1 root root 0 Oct 12  2017 newfile
```

Fix for above issue:

```bash
docker run --rm --volume $PWD:/source --workdir /src ubuntu rm newfile
```

Solution for mounting volumes:

```bash
docker run --rm --user $(id -u):$(id -g) --volume $PWD:/src --workdir /src touch newfile
```