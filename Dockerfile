FROM ubuntu:18.10
   
RUN apt-get update && apt-get install -y \
  powershell \
  libboost-all-dev \
  abi-dumper \
  abi-compliance-checker \
  git \
  cmake \
  build-essentials
