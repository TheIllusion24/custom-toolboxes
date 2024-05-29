#!/usr/bin/env bash

set -ouex pipefail

apt update && apt upgrade -y

apt install -y \
    build-essential \
    gh \
    neovim \
    pinentry-gnome3 \
    wl-clipboard
