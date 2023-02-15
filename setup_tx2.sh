#!/usr/bin/env sh

#install emacs
sudo add-apt-repository -y ppa:kelleyk/emacs
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt update
sudo apt install -y emacs28
sudo apt install -y git

git clone https://github.com/aieis/doom.d ~/.doom.d
git clone https://github.com/doomemacs/doomemacs.git ~/.emacs.d

~/.emacs.d/bin/doom install --force

echo "alias ec=\"emacsclient -n -c -a ''\"" >> ~/.bashrc
echo "alias ecn=\"emacsclient -n -a ''\"" >> ~/.bashrc
