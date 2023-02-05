#!/bin/bash
args="-j$(nproc --all) \
	O=../out \
	ARCH=arm64 \
	CROSS_COMPILE=../aarch64-linux-android-4.9/bin/aarch64-linux-android- \
	CC=../clang-r416183b/bin/clang \
	CLANG_TRIPLE=aarch64-linux-gnu-"
make ${args} clover-perf_defconfig
make ${args} dtbs
make ${args} 
