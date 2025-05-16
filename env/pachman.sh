#! /bin/bash
sudo pacman -S --noconfirm --needed nvim
sudo pacman -S fastfetch
sudo pacman -S waybar
sudo pacman -S rofi
sudo pacman -S stow
sudo pacman -S gimp tldr man fzf btop

echo ## install YAY
sudo pacman -S base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
yay --version
rm -rf ./yay-bin

sudo pacman -S ttf-font-awesome ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols
sudo pacman -S pavucontrol

sudo pacman -S --noconfirm --needed hyprlock hypridle hyprpaper
yay -S hyprshot
sudo pacman -S --noconfirm --needed rust

yay -S starship
sudo pacman -S yazi
