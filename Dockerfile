FROM ubuntu:19.10
    
RUN apt update && \
    apt install -y git perl-base binutils automake autoconf \
        libtool pkg-config elfutils libelf-dev && \
    git clone https://github.com/universal-ctags/ctags && cd ctags && \
        ./autogen.sh && ./configure && make install && cd .. && \
    git clone https://github.com/lvc/vtable-dumper && cd vtable-dumper && \
        make install && cd .. && \
    git clone https://github.com/lvc/abi-dumper && cd abi-dumper && \
        make install && cd .. && \
    git clone https://github.com/lvc/abi-compliance-checker.git && cd abi-compliance-checker && \
        make install prefix=/usr && cd .. && \
    rm -rf ctags vtable-dumper abi-dumper abi-compliance-checker

RUN apt update && \
   apt install -y --no-install-recommends libboost-all-dev cmake
