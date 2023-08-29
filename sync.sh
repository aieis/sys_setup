echo "Setting up home"
mkdir ~/source && cd ~/source

git clone https://github.com/aieis/dotfiles
cd dotfiles

cp -r config/. ~/.config
cp -r local/. ~/.local
cd home
for f in *; do cp $f ~/.$f; done

chsh -s /bin/zsh aieis

cd ~/source
git clone https://github.com/aieis/dwm
cd dwm
echo "Installing dwm: "
make
sudo make install

cd ~/source
git clone https://github.com/aieis/dwmblocks
cd dwmblocks
sh ./build

git clone https://github.com/aieis/emacs-conf /home/aieis/.emacs.d
