#!/usr/bin/env bash

set -ouex pipefail

# Configure dnf
echo "fastestmirror=true 
max_parallel_downloads=10" >> /etc/dnf/dnf.conf
