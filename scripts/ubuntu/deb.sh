#!/usr/bin/env bash

set -ouex pipefail

apt update && apt upgrade

apt install \
    gh \
    neovim \
    pinentry \
    pinentry-gnome3

apt install \
    build-essential
