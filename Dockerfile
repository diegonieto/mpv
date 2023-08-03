FROM        ubuntu:20.04 AS base

WORKDIR     /tmp/mpv

ENV TZ=Europe/Madrid
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata
RUN ln -fs /usr/share/zoneinfo/$TZ /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

RUN     DEBIAN_FRONTEND=noninteractive \
        apt-get -yqq update && \
        apt-get install -yq --no-install-recommends \
        python3 \
        ca-certificates \
        git \
        python3-pip \
        build-essential \
        cmake \
        pkg-config \
        libxpresent-dev \
        libass-dev \
        yasm \
        libsdl2-dev \
        libva-dev \
        libva2 \
        libva-x11-2 \
        ninja-build \
        liblua5.2-dev


RUN git clone -b 0.62 https://github.com/mesonbuild/meson.git ${HOME}/meson --depth 1
RUN alias meson="python3 ${HOME}/meson/meson.py"
