#!/bin/bash

clear

export ARCH=arm64 && SUBARCH=arm64
export CROSS_COMPILE=/home/haikalizz06/toolchain/bin/aarch64-linux-android-
export KBUILD_BUILD_USER=haikalizz
export KBUILD_BUILD_HOST=haskal-001
make O=out jasmine-perf_defconfig
make O=out -j$(nproc --all)
