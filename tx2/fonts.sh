#!/bin/sh

wget https://github.com/be5invis/Iosevka/releases/download/v22.0.2/super-ttc-iosevka-22.0.2.zip -O iosevka.zip
mkdir fonts
unzip iosevka -d fonts
mkdir -p ~/.local/share/fonts
cp fonts/* ~/.local/share/fonts/
fc-cache
