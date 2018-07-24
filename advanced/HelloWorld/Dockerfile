FROM ubuntu:xenial
LABEL maintainer=nicholas.dille@haufe-lexware.com

ENV JRE_VERSION=8u131
RUN apt-get update \
 && apt-get -y install openjdk-8-jdk-headless=${JRE_VERSION}-*

ADD HelloWorld.java /tmp
RUN javac /tmp/HelloWorld.java

CMD [ "java", "-classpath", "/tmp", "HelloWorld" ]