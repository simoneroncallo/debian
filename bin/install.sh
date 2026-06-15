#!/bin/bash
#
# ========================================================================
#
# Script Name: install.sh
# Author: Simone Roncallo
# Description: Personal configuration for a Fedora installation
# Requirements: Fedora, dnf, sudo
# Instructions: Run with sudo
#
# ========================================================================

set -e

dnf upgrade --refresh

# Packages
BASIC=(eza tree alacritty micro par2cmdline tmux htop btop fastfetch)
SECURITY=(firewall-config lynis)
CODE=(python3 gcc-c++)
TOOLS=(inkscape gimp gnome-boxes)

PCKGS=(\
	"${BASIC[@]}" \
	"${SECURITY[@]}" \
	"${CODE[@]}" \
	"${TOOLS[@]}"\
	)

# LaTeX
# dnf install texlive-scheme-full

dnf install "${PCKGS[@]}"
dnf autoremove
dnf clean all

echo "Completed."
