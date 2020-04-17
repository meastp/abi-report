FROM ubuntu:19.10

RUN snap install powershell --classic

RUN apt-get update && apt-get install -y \
  libboost-all-dev \
  abi-dumper \
  abi-compliance-checker \
  git \
  cmake \
  build-essential
