#!/bin/bash

set -e

INSTALL_PATH="/usr/local/bin/netinfo"
TMP_FILE="/tmp/netinfo"

# colors rgb
reset=$'\033[0m'
pink=$'\033[38;2;255;105;235m'
cyan=$'\033[38;2;90;255;220m'

echo "${pink}================================${reset}"
echo "${pink}Installing netinfo...${reset}"
echo "${pink}================================${reset}"

# download latest script
curl -fsSL https://raw.githubusercontent.com/omenstudio-apps/netinfo/main/netinfo -o "$TMP_FILE"

# make executable
chmod +x "$TMP_FILE"

# move into place
sudo mv "$TMP_FILE" "$INSTALL_PATH"

echo
echo "${pink}================================${reset}"
echo "${cyan}Installed successfully!${reset}"
echo "${pink}Run it using: netinfo${reset}"
echo "${pink}================================${reset}"
