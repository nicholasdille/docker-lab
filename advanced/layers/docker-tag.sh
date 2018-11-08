#!/bin/bash

REGISTRY_NAME="https://myregistry.example.com"
REGISTRY_USER=groot
read -s -p "Please enter password for user ${REGISTRY_USER}: " REGISTRY_PASS

REPOSITORY=myimage
TAG_OLD=mytag
TAG_NEW=mynewtag

MANIFEST=$(curl -u "${REGISTRY_USER}:${REGISTRY_PASS}" -H "Accept: application/vnd.docker.distribution.manifest.v2+json" "${REGISTRY_NAME}/v2/${REPOSITORY}/manifests/${TAG_OLD}")
curl -u "${REGISTRY_USER}:${REGISTRY_PASS}" -X PUT -H "Content-Type: application/vnd.docker.distribution.manifest.v2+json" -d "${MANIFEST}" "${REGISTRY_NAME}/v2/${REPOSITORY}/manifests/${TAG_NEW}"