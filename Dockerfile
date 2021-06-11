FROM ubuntu:20.04

ENV LANG en_US.UTF-8

# not an interactive install
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq
RUN apt-get install -y openssh-client git curl jq golang dnsutils

