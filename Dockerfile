FROM nvidia/cuda:11.0.3-base-ubuntu18.04

ENV DEBIAN_FRONTEND=noninteractive
ENV HOME /home
WORKDIR $HOME

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y --no-install-recommends \
    build-essential \
    dpkg-dev \
    freeglut3-dev \
    git \
    libbz2-dev \
    libffi-dev \
    libgdbm-dev \
    libgstreamer-plugins-base1.0-dev \
    libgtk-3-dev \
    libjpeg-dev \
    libncursesw5-dev \
    libnotify-dev \
    libpq-dev \
    libreadline-dev \
    libsdl2-dev \
    libsm-dev \
    libsqlite3-dev \
    libssl-dev \
    libtiff-dev \
    libwebkitgtk-3.0-dev \
    libxml2-dev \
    libxslt1-dev \
    libxtst-dev \
    python-dev \
    python3.7-dev \
    python3-pip \
    python3.7 \
    unzip \
    wget \
    zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*
