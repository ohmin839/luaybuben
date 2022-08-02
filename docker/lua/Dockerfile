
FROM ubuntu:focal

RUN apt-get update && \
    apt-get install -qy build-essential curl unzip 

ARG USERNAME=user
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000
ARG HOME=/home/$USERNAME
RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID $USERNAME

RUN cd /tmp && \
    # lua v5.4.4
    curl -sf -R -O http://www.lua.org/ftp/lua-5.4.4.tar.gz && \
    tar zxf lua-5.4.4.tar.gz && \
    cd lua-5.4.4 && \
    make all test && \
    make install && \
    cd /tmp && \
    # luarocks v3.9.1
    curl -sfSL -R -O https://luarocks.org/releases/luarocks-3.9.1.tar.gz && \
    tar zxf luarocks-3.9.1.tar.gz && \
    cd luarocks-3.9.1 && \
    ./configure && \
    make && \
    make install

USER $USERNAME
WORKDIR /luaybuben

