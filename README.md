# penpot
electron wrapper of https://penpot.app
# Installation
For build and install this app, you will need installed `flatpak-builder` and from flathub `org.freedesktop.Sdk org.freedesktop.Sdk.Extension.node16 org.electronjs.Electron2.BaseApp`:
```bash
wget -c https://raw.githubusercontent.com/vikdevelop/penpot/main/manifest.yaml
flatpak-builder build manifest.yaml --install --user
```