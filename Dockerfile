FROM ubuntu:19.10

RUN apt-get update && apt-get install -y \
  libboost-all-dev \
  abi-dumper \
  abi-compliance-checker \
  git \
  cmake \
  build-essential
  
# build, install universal-ctags
RUN git clone https://github.com/universal-ctags/ctags.git && \
  cd ctags && \
  ./autogen.sh && \
  ./configure && \
  make && \
  make install

