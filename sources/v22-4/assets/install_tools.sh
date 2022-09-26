#!/bin/bash

# removes these repositories because nvidia changed their PGP keys, and
# do not need them anyway
rm  -f /etc/apt/sources.list.d/nvidia-ml.list
rm -f  /etc/apt/sources.list.d/cuda.list

apt-get -q -yy update && DEBIAN_FRONTEND=noninteractive apt-get -q -y install \
    build-essential \
    ca-certificates \
    curl \
    ffmpeg \
    gettext-base \
    git \
    htop \
    libsm6 \
    libxext6 \
    man \
    nano \
    ncdu \
    procps \
    python3-venv \
    rsync \
    ssh \
    supervisor \
    transmission-cli \
    unzip \
    vim \
    wget \
    zip \
    && apt-get -qq clean \
    && rm -rf /var/lib/apt/lists/*

