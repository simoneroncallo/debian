#!/bin/bash
#
# ========================================================================
#
# Script Name: install.sh
# Author: Simone Roncallo
# Description: Personal configuration for a CLI Debian.
# Requirements: Debian, apt, sudo
# Instructions: Run with sudo
#
# ========================================================================

set -e

apt update 
apt upgrade -y
apt autoremove --purge -y

# Packages
TOOLS=(tree tmux htop bpytop fastfetch)
VISUALS=(cmatrix)
SECURITY=(lynis ufw)
DEVOPS=(docker.io)

PCKGS=("${TOOLS[@]}" "${VISUALS[@]}" "${SECURITY[@]}" "${DEVOPS[@]}")

apt install -y "${PCKGS[@]}"

echo "Completed."
