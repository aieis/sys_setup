ln -sf /usr/share/zoneinfo/Europe/London /etc/localtime
hwclock --systohc
sed -i 's/^#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "aieis" > /etc/hostname

pacman -S grub efibootmgr networkmanager dhcpcd --noconfirm
systemctl enable NetworkManager.service

grub-install --target=x86_64-efi --efi-directory=/boot/grub --bootloader-id=GRUB_P --removable
grub-mkconfig -o /boot/grub/grub.cfg

echo "Set root password:"
passwd

pacman -S --needed git base-devel --noconfirm

echo "Set user password:"
useradd -m -G wheel aieis
passwd aieis
su aieis

echo "Setting up home"
mkdir ~/source && cd ~/source

git clone https://github.com/aieis/dotfiles
cd dotfiles

cp -r config/. ~/.config
cp -r local/. ~/.local
cd home
for f in ./*; do cp $f ~/.$f; done

#install yay
cd ~/source
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#install windows env
sudo pacman -S noto-fonts-emoji --noconfirm
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
pacman -S emacs ttc-iosevka git --noconfirm

git clone https://github.com/aieis/emacs-conf /home/aieis/.emacs.d

echo "alias ec=\"emacsclient -n -c -a ''\"" >> /home/aieis/.bashrc
echo "alias ecn=\"emacsclient -n -a ''\"" >> /home/aieis/.bashrc
