
FROM ubuntu
MAINTAINER "Joseph Werle <joseph.werle@gmail.com>"

## dependencies
RUN apt-get update -y
RUN apt-get install build-essential -y
RUN apt-get install curl -y
RUN apt-get install ssh -y
RUN apt-get install git-core -y
RUN apt-get install libssl-dev -y
RUN apt-get install vim -y

RUN mkdir /usr/local/spotlet

WORKDIR /usr/local/spotlet

