FROM ubuntu:latest
ARG PACKER_VERSION=1.5.4

RUN apt-get update && \
    apt-get install -y wget python-pip unzip git python-netaddr && \
    wget https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip && \
    unzip packer_${PACKER_VERSION}_linux_amd64.zip && \
    rm -Rf packer_${PACKER_VERSION}_linux_amd64.zip && \
    mv packer* /usr/local/bin && \
    pip install ansible

CMD bash
