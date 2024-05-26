#!/usr/bin/env bash

set -ouex pipefail

apt update && apt upgrade -y

apt install -y \
    gh \
    neovim \
    pinentry-gnome3

apt install -y \
    build-essential
