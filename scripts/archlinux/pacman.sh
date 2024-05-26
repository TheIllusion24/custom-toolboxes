#!/usr/bin/env bash

set -ouex pipefail

# Deps
pacman -Sy --needed --noconfirm \
	bash-completion \
	bc \
	curl \
	diffutils \
	findutils \
	glibc \
	gnupg \
	inetutils \
	keyutils \
	less \
	lsof \
	man-db \
	man-pages \
	mlocate \
	mtr \
	ncurses \
	nss-mdns \
	openssh \
	pigz \
	pinentry \
	procps-ng \
	rsync \
	shadow \
	sudo \
	tcpdump \
	time \
	traceroute \
	tree \
	tzdata \
	unzip \
	util-linux \
	util-linux-libs \
	vte-common \
	wget \
	words \
	xorg-xauth \
	zip \
	mesa \
	vulkan-intel \
	vulkan-radeon

pacman -Sy --noconfirm \
    github-cli \
    neovim

