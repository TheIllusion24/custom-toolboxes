#!/usr/bin/env bash

set -ouex pipefail

dnf install -y \
    gh \
    neovim \
    pinentry \
    pinentry-gnome3

# Dev
dnf group install -y \
    development-libs \
    development-tools
