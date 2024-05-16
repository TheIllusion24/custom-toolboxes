#!/usr/bin/env bash

set -ouex pipefail

dnf install -y \
    gh \
    neovim 

# Dev
dnf groupinstall -y \
    "Development Libraries" \
    "Development Tools"
