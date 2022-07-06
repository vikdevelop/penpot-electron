#!/usr/bin/bash
echo -e '\033[1m Project: vikdevelop/penpot-electron \033[0m'
echo "- Downloading Manifest"
cd /tmp
wget -c https://raw.githubusercontent.com/vikdevelop/penpot-electron/main/manifest.yaml > /dev/null 2>&1
mkdir flatpak
echo "- Building and installing penpot-electron with flatpak builder"
echo "--- it's gonna take a while"
flatpak-builder flatpak manifest.yaml --install --user > /dev/null 2>&1
echo "- Cleaning build files"
rm -rf /tmp/flatpak
rm /tmp/manifest.yaml
echo -e '\033[1m Done! Penpot-electron was builded and installed successfull!  \033[0m'
