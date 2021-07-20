FROM ubuntu:20.04

ENV LANG en_US.UTF-8

# not an interactive install
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq
RUN apt-get install -y openssh-client git curl jq golang dnsutils apt-transport-https ca-certificates curl

RUN curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update -qq
RUN apt-get install -y kubectl
