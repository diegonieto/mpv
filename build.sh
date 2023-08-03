#!/bin/bash

rm -rf builddir
PKG_CONFIG_PATH=/opt/FFmpeg/lib/pkgconfig \
python3 $HOME/meson/meson.py builddir \
    --prefix=/opt/mpv \
    -Dvaapi=enabled \
    -Dx11=enabled \
    -Dlua=lua52
