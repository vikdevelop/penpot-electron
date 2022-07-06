#!/usr/bin/bash
echo "\033[1mProject: vikdevelop/penpot-electron\033[0m"
echo "- Downloading Manifest"
cd /tmp
wget -c https://raw.githubusercontent.com/vikdevelop/penpot-electron/main/manifest.yaml > /dev/null 2>&1
echo "- Building and installing penpot-electron with flatpak builder"
echo "--- it's gonna take a while"
flatpak-builder manifest.yaml flatpak --install --user > /dev/null 2>&1
echo "\033[1mDone! Penpot-electron was builded and installed successfull!\033[0m"
