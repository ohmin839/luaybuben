
FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -qy build-essential curl unzip 

ARG USERNAME=user
ARG GROUPNAME=user
ARG UID=1001
ARG GID=1001
RUN groupadd -g ${GID} ${GROUPNAME} && \
    useradd -m -s /bin/bash -u ${UID} -g ${GID} ${USERNAME}

ARG LUA_VERSION=5.4.4
ARG LUAROCKS_VERSION=3.9.1
RUN cd /tmp && \
    # lua
    curl -sf -R -O http://www.lua.org/ftp/lua-${LUA_VERSION}.tar.gz && \
    tar zxf lua-${LUA_VERSION}.tar.gz && \
    cd lua-${LUA_VERSION} && \
    make all test && \
    make install && \
    cd /tmp && \
    # luarocks
    curl -sfSL -R -O https://luarocks.org/releases/luarocks-${LUAROCKS_VERSION}.tar.gz && \
    tar zxf luarocks-${LUAROCKS_VERSION}.tar.gz && \
    cd luarocks-${LUAROCKS_VERSION} && \
    ./configure && \
    make && \
    make install

USER ${USERNAME}
WORKDIR /luaybuben

