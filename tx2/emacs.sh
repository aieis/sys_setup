#!/bin/sh

sudo add-apt-repository -y ppa:kelleyk/emacs
sudo apt update
sudo apt install -y emacs28

echo "alias ec=\"emacsclient -n -c -a ''\"" >> ~/.bashrc
echo "alias ecn=\"emacsclient -n -a ''\"" >> ~/.bashrc
