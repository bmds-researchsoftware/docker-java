# To build this image: docker build -t java19 .
# To run this image: docker run -it java19:latest

FROM buildpack-deps:xenial-scm

ARG SERVICE_NAME

RUN apt-get -y update && \
    apt-get install -y software-properties-common && \
    apt-get install -y ca-certificates-java && \
    apt-get install -y telnet

RUN mkdir -p /usr/lib/jvm
WORKDIR /usr/lib/jvm
ADD jdk-9.0.4_linux-x64_bin.tar.gz .

WORKDIR /tmp
ADD update-alternatives.sh .
RUN ./update-alternatives.sh

WORKDIR /
