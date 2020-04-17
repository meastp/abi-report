FROM ubuntu:19.10

# build, install universal-ctags
RUN  git clone http://github.com/universal-ctags/ctags.git ~/ctags && \
  cd ~/ctags && \
  ./autogen.sh && \
  ./configure --program-prefix=u && \
  make && make install && \

RUN apt-get update && apt-get install -y \
  libboost-all-dev \
  abi-dumper \
  abi-compliance-checker \
  git \
  cmake \
  build-essential

