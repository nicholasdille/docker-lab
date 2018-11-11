FROM ubuntu

ARG JAVA_VERSION=8u181
RUN apt-get update \
 && apt-get -y install openjdk-8-jre-headless=${JAVA_VERSION}-*

ENV JAVA_OPTS="-Xms256m -Xmx1024m -server"
ENTRYPOINT [ "java" ]