#!/usr/bin/env sh

#install emacs
sudo add-apt-repository -y ppa:kelleyk/emacs
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt update
sudo apt install -y emacs28
sudo apt install -y git
sudo apt install -y ca-certificates

git clone https://github.com/doomemacs/emacs-conf ~/.emacs.d

echo "alias ec=\"emacsclient -n -c -a ''\"" >> ~/.bashrc
echo "alias ecn=\"emacsclient -n -a ''\"" >> ~/.bashrc
