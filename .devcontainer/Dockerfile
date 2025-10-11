FROM ubuntu:22.04 AS builder
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
        rm /var/lib/dpkg/info/libc-bin.* && \
        apt-get clean && \
        apt-get update && \
        apt install libc-bin && \
        apt-get install -y build-essential cmake clang openssl libssl-dev zlib1g-dev gperf wget git \
        ninja-build libsodium-dev libmicrohttpd-dev liblz4-dev pkg-config autoconf automake libtool \
        libjemalloc-dev lsb-release software-properties-common gnupg

RUN wget https://apt.llvm.org/llvm.sh && \
    chmod +x llvm.sh && \
    ./llvm.sh 16 all && \
    rm -rf /var/lib/apt/lists/*

ENV CC=/usr/bin/clang-16
ENV CXX=/usr/bin/clang++-16
ENV CCACHE_DISABLE=1

WORKDIR /workspace