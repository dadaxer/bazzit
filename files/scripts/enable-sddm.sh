#!/usr/bin/env bash
set -oue pipefail

# Remove the autologin to gamescope-session
rm /etc/sddm.conf.d/steamos.conf
echo "steamos.con removed"

# Undo some bazzite-deck specific services we do not need anymore
systemctl disable bazzite-autologin.service
