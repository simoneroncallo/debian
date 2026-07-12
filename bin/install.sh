#!/bin/bash
#
# ========================================================================
#
# Script Name: install.sh
# Author: Simone Roncallo
# Description: Personal configuration for an Arch Linux installation
# Requirements: pacman, sudo
# Instructions: Run with sudo
#
# ========================================================================

set -e

pacman -Syu

# Packages
BASIC=(
	nano vim micro 
	git rsync par2cmdline
	openssh sshfs
	bat tree fish tmux
	htop btop
	eza tldr fastfetch
	cmatrix
)

MEDIA=(
	steam mangohud gamemode
	inkscape gimp darktable
	audacity
)

SECURITY=(
	keepassxc
	firewall-config
	apparmor lynis
)

PCKGS=(
    "${BASIC[@]}"
    "${MEDIA[@]}"
    "${SECURITY[@]}"
)

pacman -S --needed "${PCKGS[@]}"

echo "Completed."
