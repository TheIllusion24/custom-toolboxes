#!/usr/bin/env bash

set -ouex pipefail

dnf install -y \
    neovim

# Dev
dnf groupinstall \
    "Development Tools" \
    "Development Libraries"
