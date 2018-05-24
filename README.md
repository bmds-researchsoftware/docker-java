# Docker Java
Builds a Docker image for Ubuntu Linux that includes the Java JDK.

## Setup
- Download the desired version of Java JDK into this project's directory.
- Modify update-alternatives.sh and Dockerfile to reflect the name of
  the downloaded file.

## To build the image
- $ docker build -t java19 .

## To run the image
- $ docker run -it java19:latest

