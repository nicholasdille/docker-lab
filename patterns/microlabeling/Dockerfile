FROM ubuntu

RUN touch /tmp/microlabels

ARG IMAGE_NAME
ARG IMAGE_VERSION
ARG SOURCE_REPO
ARG SOURCE_REVISION
LABEL maintainer="Nicholas Dille" \
    org.opencontainers.image.authors="Nicholas Dille" \
    org.opencontainers.image.title="${IMAGE_NAME}" \
    org.opencontainers.image.description="Demo for ContainerConf 2018" \
    org.opencontainers.image.version="${IMAGE_VERSION}" \
    org.opencontainers.image.source="${SOURCE_REPO}" \
    org.opencontainers.image.revision="${SOURCE_REVISION}"