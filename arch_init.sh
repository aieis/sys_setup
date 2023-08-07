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

echo "Set user password:"
useradd -m -G wheel aieis
passwd aieis
