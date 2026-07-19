#!/bin/bash

# AccurateGoldenGate Automated Installer
echo "=========================================="
echo " Installing AccurateGoldenGate Beta 5...  "
echo "=========================================="

# Create target directories if they don't exist
mkdir -p ~/.local/share/icons
mkdir -p ~/.config

# Extracting the custom icons
if [ -f "iconsofaccurategoldengate.tar.gz" ]; then
    echo " -> Extracting custom icons to ~/.local/share/icons/..."
    tar -xzf iconsofaccurategoldengate.tar.gz -C ~/.local/share/icons/
else
    echo " [!] iconsofaccurategoldengate.tar.gz not found!"
fi

# Extracting the configuration files and wallpapers
if [ -f "rcsandwallpapers.tar.gz" ]; then
    echo " -> Extracting configuration configurations to ~/.config/..."
    tar -xzf rcsandwallpapers.tar.gz -C ~/.config/
else
    echo " [!] rcsandwallpapers.tar.gz not found!"
fi

echo "=========================================="
echo " Installation Complete! Enjoy Beta 5.      "
echo "=========================================="