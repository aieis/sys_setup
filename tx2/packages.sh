#!/bin/sh

sudo apt-get update

sudo apt install -y git ca-certificates

#dwm
sudo apt-get install -y fonts-noto-color-emoji ttf-bitstream-vera suckless-tools sakura

#alacritty
sudo apt-get install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

#other
sudo apt-get install -y firefox dunst zsh
