FROM ubuntu

ARG JAVA_VERSION=8u162
RUN apt update \
 && apt install openjdk-8-jre-headless=${JAVA_VERSION}-*

ENV JAVA_OPTS=-Xms256m -Xmx1024m -server