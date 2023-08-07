sudo pacman -S --needed git base-devel zsh xorg-xinit xorg-server firefox libxft dmenu openssh --noconfirm

echo "Setting up home"
mkdir ~/source && cd ~/source

git clone https://github.com/aieis/dotfiles
cd dotfiles

cp -r config/. ~/.config
cp -r local/. ~/.local
cd home
for f in *; do cp $f ~/.$f; done

chsh -s /bin/zsh aieis

#install yay
cd ~/source
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#install windows env
sudo pacman -S noto-fonts-emoji ttf-bitstream-vera --noconfirm
cd ~/source
git clone https://github.com/aieis/dwm
cd dwm
echo "Installing dwm: "
sudo make install

cd ~/source
git clone https://github.com/aieis/dwmblocks
cd dwmblocks
sh ./build

#install emacs
pacman -S emacs ttc-iosevka --noconfirm

git clone https://github.com/aieis/emacs-conf /home/aieis/.emacs.d
