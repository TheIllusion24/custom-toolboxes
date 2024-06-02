#!/usr/bin/env bash

set -ouex pipefail

pacman -Sy --noconfirm \
    github-cli \
    neovim \
    wl-clipboard
