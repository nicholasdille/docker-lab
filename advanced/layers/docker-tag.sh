#!/bin/bash

REGISTRY_NAME="https://registry.haufe.io"
REGISTRY_USER=dillen
read -s -p "Please enter password for user ${REGISTRY_USER}: " REGISTRY_PASS

REPOSITORY=rd/dind
TAG_OLD=stable
TAG_NEW=stable2

MANIFEST=$(curl -u "${REGISTRY_USER}:${REGISTRY_PASS}" -H "Accept: application/vnd.docker.distribution.manifest.v2+json" "${REGISTRY_NAME}/v2/${REPOSITORY}/manifests/${TAG_OLD}")
curl -u "${REGISTRY_USER}:${REGISTRY_PASS}" -X PUT -H "Content-Type: application/vnd.docker.distribution.manifest.v2+json" -d "${MANIFEST}" "${REGISTRY_NAME}/v2/${REPOSITORY}/manifests/${TAG_NEW}"