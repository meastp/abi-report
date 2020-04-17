FROM ubuntu:19.10
   
RUN apt-get update && apt-get install -y \
  powershell \
  libboost-all-dev \
  abi-dumper \
  abi-compliance-checker \
  git \
  cmake \
  build-essential
