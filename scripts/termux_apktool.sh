#!/bin/bash

# Standalone script to set up apktool in termux
# apktool.org

# Install necessary packages
pkg install openjdk-17 wget jq -y

current_dir=$(pwd)

# Get the latest release of apktool.jar from GitHub
release_info=$(curl -s 'https://api.github.com/repos/iBotPeaches/Apktool/releases/latest')
latest_release=$(echo "$release_info" | jq -r '.assets[] | select(.name | endswith(".jar")) | .browser_download_url')

# download apktool.jar and apktool wrapper script
wget -O "$current_dir/apktool" "https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool"
wget -O "$current_dir/apktool.jar" "$latest_release"

if [ ! -s "$current_dir/apktool.jar" ]; then
    echo "Download from GitHub failed or file size is zero."
    read -p 'You can download the latest apktool.jar from https://apktool.org and put it in the current directory. Continue? (y/n)' answer
    if [ "$answer" != "y" ]; then
        echo "Exiting the script."
        exit 1
    fi
fi

if [ -f "$current_dir/apktool" ] && [ -f "$current_dir/apktool.jar" ]; then
    cp "$current_dir/apktool" "$PREFIX/bin/apktool"
    echo "Setting up apktool..."

    cp "$current_dir/apktool.jar" "$PREFIX/bin/apktool.jar"
    echo "Setting up apktool.jar..."

    rm "$current_dir/apktool" "$current_dir/apktool.jar"
else
    echo "Either apktool or apktool.jar does not exist. Setup cannot continue."
    exit 1
fi

# Ensure apktool is executable
if [ -f "$PREFIX/bin/apktool" ]; then
    chmod +x "$PREFIX/bin/apktool"
    echo "Apktool setup complete."
else
    echo "Failed to find apktool in $PREFIX/bin. Setup cannot continue."
    exit 1
fi
