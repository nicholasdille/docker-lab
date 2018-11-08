# Images and layers

# Image Manifest

```bash
curl -sLH "Accept: application/vnd.docker.distribution.manifest.v2+json" http://localhost:5000/v2/groot/layer1/manifests/latest
```

Example output:

```json
{
   "schemaVersion": 2,
   "mediaType": "application/vnd.docker.distribution.manifest.v2+json",
   "config": {
      "mediaType": "application/vnd.docker.container.image.v1+json",
      "size": 4071,
      "digest": "sha256:0d4f501d9abfe086c995a6efb63cdb0cb603875555a00d4b1a15da8e4a01ff09"
   },
   "layers": [
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 31262546,
         "digest": "sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641"
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 843,
         "digest": "sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec"
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 469,
         "digest": "sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8"
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 853,
         "digest": "sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b"
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 162,
         "digest": "sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b"
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 122,
         "digest": "sha256:8d2375955670826cb3c5daf7ba987365c0b2aef0055a73828f3d91392b0edd18"
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 120,
         "digest": "sha256:a944fc40555a13bba59709d473d887d14bf86bb748336cd17255b2df62066e8b"
      }
   ]
}
```

# Image Configuration

```bash
curl -sLH "Accept: application/vnd.docker.container.image.v1+json" http://localhost:5000/v2/groot/layer1/manifests/latest
```

Example output:

```json
{
   "schemaVersion": 1,
   "name": "groot/layer1",
   "tag": "latest",
   "architecture": "amd64",
   "fsLayers": [
      {
         "blobSum": "sha256:a944fc40555a13bba59709d473d887d14bf86bb748336cd17255b2df62066e8b"
      },
      {
         "blobSum": "sha256:8d2375955670826cb3c5daf7ba987365c0b2aef0055a73828f3d91392b0edd18"
      },
      {
         "blobSum": "sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4"
      },
      {
         "blobSum": "sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4"
      },
      {
         "blobSum": "sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b"
      },
      {
         "blobSum": "sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b"
      },
      {
         "blobSum": "sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8"
      },
      {
         "blobSum": "sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec"
      },
      {
         "blobSum": "sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641"
      }
   ],
   "history": [
      {
         "v1Compatibility": "{\"architecture\":\"amd64\",\"config\":{\"Hostname\":\"\",\"Domainname\":\"\",\"User\":\"\",\"AttachStdin\":false,\"AttachStdout\":false,\"AttachStderr\":false,\"Tty\":false,\"OpenStdin\":false,\"StdinOnce\":false,\"Env\":[\"PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\"],\"Cmd\":[\"/bin/bash\"],\"ArgsEscaped\":true,\"Image\":\"sha256:48789bfe9aaee266b4a0fcbf9a986be5bb98178c00a648e753bfa88aab594038\",\"Volumes\":null,\"WorkingDir\":\"\",\"Entrypoint\":null,\"OnBuild\":null,\"Labels\":null},\"container\":\"b711bb9e26e1b84cdae75eb1c24bdf70b74bb59d69656b204d553a52090657bd\",\"container_config\":{\"Hostname\":\"\",\"Domainname\":\"\",\"User\":\"\",\"AttachStdin\":false,\"AttachStdout\":false,\"AttachStderr\":false,\"Tty\":false,\"OpenStdin\":false,\"StdinOnce\":false,\"Env\":[\"PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\"],\"Cmd\":[\"|1\",\"SUFFIX=1\",\"/bin/sh\",\"-c\",\"touch /tmp/done\"],\"ArgsEscaped\":true,\"Image\":\"sha256:48789bfe9aaee266b4a0fcbf9a986be5bb98178c00a648e753bfa88aab594038\",\"Volumes\":null,\"WorkingDir\":\"\",\"Entrypoint\":null,\"OnBuild\":null,\"Labels\":null},\"created\":\"2018-08-01T19:19:43.525631011Z\",\"docker_version\":\"18.03.1-ce\",\"id\":\"498b95cff472b2c2f5f85f184350cd3ccc1962b7745f38ba3575f17eaf5b1246\",\"os\":\"linux\",\"parent\":\"0ecbb19dd79e3fc00a529961eac1c9e4c10662cdc0189c29df9529e59ee9e36b\"}"
      },
      {
         "v1Compatibility": "{\"id\":\"0ecbb19dd79e3fc00a529961eac1c9e4c10662cdc0189c29df9529e59ee9e36b\",\"parent\":\"2ae9ed036178c49568cae3a537dbfdf906bb1e043fb5990165ed86386bbf5dbb\",\"created\":\"2018-08-01T18:49:07.283406223Z\",\"container_config\":{\"Cmd\":[\"|1 SUFFIX=1 /bin/sh -c touch /opt/file${SUFFIX}\"]}}"
      },
      {
         "v1Compatibility": "{\"id\":\"2ae9ed036178c49568cae3a537dbfdf906bb1e043fb5990165ed86386bbf5dbb\",\"parent\":\"b34537233e38aab761d900c16cc752c261ac32ebbf052de8533dc44bd38b9534\",\"created\":\"2018-08-01T18:49:04.664572486Z\",\"container_config\":{\"Cmd\":[\"/bin/sh -c #(nop)  ARG SUFFIX\"]},\"throwaway\":true}"
      },
      {
         "v1Compatibility": "{\"id\":\"b34537233e38aab761d900c16cc752c261ac32ebbf052de8533dc44bd38b9534\",\"parent\":\"e05ad70678a5b57c7d9d0d7e95e16228eecf915c1b81a8b2116eb2f4a61cd951\",\"created\":\"2018-06-05T21:20:54.310450149Z\",\"container_config\":{\"Cmd\":[\"/bin/sh -c #(nop)  CMD [\\\"/bin/bash\\\"]\"]},\"throwaway\":true}"
      },
      {
         "v1Compatibility": "{\"id\":\"e05ad70678a5b57c7d9d0d7e95e16228eecf915c1b81a8b2116eb2f4a61cd951\",\"parent\":\"2181b69ee6eb1f54740cf1c5db1c97ff0b3db3e1afafa37501c06b550004e07b\",\"created\":\"2018-06-05T21:20:54.091704323Z\",\"container_config\":{\"Cmd\":[\"/bin/sh -c mkdir -p /run/systemd \\u0026\\u0026 echo 'docker' \\u003e /run/systemd/container\"]}}"
      },
      {
         "v1Compatibility": "{\"id\":\"2181b69ee6eb1f54740cf1c5db1c97ff0b3db3e1afafa37501c06b550004e07b\",\"parent\":\"fc67a088859168c36004581d46ba5f43b1af60891d372e0d832ed9f02b5491c9\",\"created\":\"2018-06-05T21:20:53.405342638Z\",\"container_config\":{\"Cmd\":[\"/bin/sh -c sed -i 's/^#\\\\s*\\\\(deb.*universe\\\\)$/\\\\1/g' /etc/apt/sources.list\"]}}"
      },
      {
         "v1Compatibility": "{\"id\":\"fc67a088859168c36004581d46ba5f43b1af60891d372e0d832ed9f02b5491c9\",\"parent\":\"956e81104ad300f455f178a62fee02712529f7e95d1c2f7bd1388a3c8086563c\",\"created\":\"2018-06-05T21:20:52.712120056Z\",\"container_config\":{\"Cmd\":[\"/bin/sh -c rm -rf /var/lib/apt/lists/*\"]}}"
      },
      {
         "v1Compatibility": "{\"id\":\"956e81104ad300f455f178a62fee02712529f7e95d1c2f7bd1388a3c8086563c\",\"parent\":\"893c22467b8c6b1ee608f0cc435cbb2dba29e0569a399cdaf190cea0bd477c95\",\"created\":\"2018-06-05T21:20:52.045074543Z\",\"container_config\":{\"Cmd\":[\"/bin/sh -c set -xe \\t\\t\\u0026\\u0026 echo '#!/bin/sh' \\u003e /usr/sbin/policy-rc.d \\t\\u0026\\u0026 echo 'exit 101' \\u003e\\u003e /usr/sbin/policy-rc.d \\t\\u0026\\u0026 chmod +x /usr/sbin/policy-rc.d \\t\\t\\u0026\\u0026 dpkg-divert --local --rename --add /sbin/initctl \\t\\u0026\\u0026 cp -a /usr/sbin/policy-rc.d /sbin/initctl \\t\\u0026\\u0026 sed -i 's/^exit.*/exit 0/' /sbin/initctl \\t\\t\\u0026\\u0026 echo 'force-unsafe-io' \\u003e /etc/dpkg/dpkg.cfg.d/docker-apt-speedup \\t\\t\\u0026\\u0026 echo 'DPkg::Post-Invoke { \\\"rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true\\\"; };' \\u003e /etc/apt/apt.conf.d/docker-clean \\t\\u0026\\u0026 echo 'APT::Update::Post-Invoke { \\\"rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true\\\"; };' \\u003e\\u003e /etc/apt/apt.conf.d/docker-clean \\t\\u0026\\u0026 echo 'Dir::Cache::pkgcache \\\"\\\"; Dir::Cache::srcpkgcache \\\"\\\";' \\u003e\\u003e /etc/apt/apt.conf.d/docker-clean \\t\\t\\u0026\\u0026 echo 'Acquire::Languages \\\"none\\\";' \\u003e /etc/apt/apt.conf.d/docker-no-languages \\t\\t\\u0026\\u0026 echo 'Acquire::GzipIndexes \\\"true\\\"; Acquire::CompressionTypes::Order:: \\\"gz\\\";' \\u003e /etc/apt/apt.conf.d/docker-gzip-indexes \\t\\t\\u0026\\u0026 echo 'Apt::AutoRemove::SuggestsImportant \\\"false\\\";' \\u003e /etc/apt/apt.conf.d/docker-autoremove-suggests\"]}}"
      },
      {
         "v1Compatibility": "{\"id\":\"893c22467b8c6b1ee608f0cc435cbb2dba29e0569a399cdaf190cea0bd477c95\",\"created\":\"2018-06-05T21:20:51.286433694Z\",\"container_config\":{\"Cmd\":[\"/bin/sh -c #(nop) ADD file:28c0771e44ff530dba3f237024acc38e8ec9293d60f0e44c8c78536c12f13a0b in / \"]}}"
      }
   ],
   "signatures": [
      {
         "header": {
            "jwk": {
               "crv": "P-256",
               "kid": "SWGQ:JYCL:Z2LO:WZNT:GGR4:QYYH:IC6P:FKI5:NYG3:QG5H:TSG5:PX3R",
               "kty": "EC",
               "x": "J1oY63-d0OUsW9x78Bo5gJ7458AbcOlRE9MpNdaJAKY",
               "y": "-lByQgoOOKr43nUQ7-zmbyw9lcyeqHn5wH5PAku2NkQ"
            },
            "alg": "ES256"
         },
         "signature": "jEoZEqLIQlfRvfIc9qTMdeTgRHQOORdPHUDTAT2P_KH0O0fZzTOt4Sd_gz7f_wicvQHSSSeXpdRC4z962W92WQ",
         "protected": "eyJmb3JtYXRMZW5ndGgiOjY3MzUsImZvcm1hdFRhaWwiOiJDbjAiLCJ0aW1lIjoiMjAxOC0wOC0wMVQyMDoxNDozM1oifQ"
      }
   ]
}
```

# Pulling a layer

The SHA256 digest is contained in the image manifest `.layers[n].digest`.

```bash
curl -sLH "Accept: application/vnd.docker.image.rootfs.diff.tar.gzip" http://localhost:5000/v2/groot/layer1/blobs/sha256:8d2375955670826cb3c5daf7ba987365c0b2aef0055a73828f3d91392b0edd18
```

Verifying a layer's digest:

```bash
curl -LH "Accept: application/vnd.docker.image.rootfs.diff.tar.gzip" http://localhost:5000/v2/test/layer1/blobs/sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641 | sha256sum
```

# Pushing an image

Mount layer from other repository:

```bash
curl -vX POST 'http://localhost:5000/v2/test2/target/blobs/uploads/?mount=sha256:dd6ea61144dbe1194ef5bb22f5d8eee64506a778a015716f4f4aeb2ca0aeb0c5&from=test2/layer2'
```

Uploading data:

```bash
curl -vX POST http://localhost:5000/v2/test2/target/blobs/uploads/
```

Extract `Docker-Upload-Uuid` from header.

Monolithic upload:

```bash
curl -vX PUT -T target-config.json -H "Content-Length: 2060" -H "Content-Type: application/octet-stream" http://localhost:5000/v2/test2/target/blobs/uploads/660374b6-073a-4f9c-b92b-cba07e844956?digest=sha256%3A58585a7fd7ed07a6f04166713d16cc780c1589a7bcee144d1dacadab22bd90e2
```