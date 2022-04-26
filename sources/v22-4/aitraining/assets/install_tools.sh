#!/bin/bash
apt-get -q -yy update && DEBIAN_FRONTEND=noninteractive apt-get -q -y install \
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

