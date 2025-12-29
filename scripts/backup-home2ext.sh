#!/bin/bash
# ========================================================================
#
# Script Name: backup.sh
# Author: Simone Roncallo
# Description: Incremental backup with rsync
# Requirements: Mounted drive
# Instructions: Substitute with user and drive names
#
# ========================================================================

set -e

# Configuration
DRY=false
MYUSER=<user>
MYDRIVE=<drive>

# Set directories
SOURCE="/home/$MYUSER"
MOUNT="/run/media/$MYUSER/$MYDRIVE"
if [ ! -d "$MOUNT" ]; then
    echo "Aborted. Mount point not available at /run/media/$MYUSER/$MYDRIVE"; exit 1
fi
BACKUP="$MOUNT/${MYUSER}ThinkPad-backup"

# Create incremental backup directories
last="$BACKUP/last"
timestamp=$(date +%Y%m%d-%H%M%S)
new="$BACKUP/snapshots/$timestamp"
mkdir -p "$BACKUP/snapshots"
mkdir -p "$new"

option=""
if [ "$DRY" = true ]; then
	option="--dry-run"
fi

rsync -avP $option \
	--delete --link-dest="$last/" \
	--exclude-from="./rsyncignore" \
	"$SOURCE/" "$new"

rm -f "$last" && ln -s "$new" "$last"
echo "Completed."
