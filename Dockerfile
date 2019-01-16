# To build this image: docker build -t java11 .
# To run this image: docker run -it java11:latest

FROM buildpack-deps:bionic-scm

ARG SERVICE_NAME

RUN apt-get -y update && \
    apt-get install -y software-properties-common && \
    apt-get install -y ca-certificates-java && \
    apt-get install -y telnet && \
    apt-get install -y maven

RUN mkdir -p /usr/lib/jvm
WORKDIR /usr/lib/jvm
ADD jdk-11.0.2_linux-x64_bin.tar.gz .

WORKDIR /tmp
ADD update-alternatives.sh .
RUN ./update-alternatives.sh

WORKDIR /
