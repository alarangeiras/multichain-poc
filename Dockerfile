FROM ubuntu:18.04

WORKDIR /tmp

RUN apt-get update

RUN apt-get install -y wget

RUN wget https://www.multichain.com/download/multichain-2.0.2.tar.gz

RUN tar -xvzf multichain-2.0.2.tar.gz

WORKDIR /tmp/multichain-2.0.2

RUN mv multichaind multichain-cli multichain-util /usr/bin

WORKDIR /root