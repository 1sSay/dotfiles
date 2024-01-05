#!/usr/bin/env sh

BASE_DIR=$HOME/Documents/dotfiles

mkdir ~/.config

rm -rfv ~/.config/hypr
ln -sfv $BASE_DIR/hypr ~/.config/hypr

rm -rfv ~/.config/waybar
ln -sfv $BASE_DIR/waybar ~/.config/waybar

rm -rfv ~/.config/kitty
ln -sfv $BASE_DIR/kitty ~/.config/kitty

rm -rfv ~/.zshrc
ln -sfv $BASE_DIR/.zshrc ~/.zshrc

rm -rfv ~/.config/paru
ln -sfv $BASE_DIR/paru ~/.config/paru

rm -rfv ~/.config/eww
ln -sfv $BASE_DIR/eww ~/.config/eww

rm -rfv ~/.config/wofi
ln -sfv $BASE_DIR/wofi ~/.config/wofi

rm -rfv ~/.config/scripts
ln -sfv $BASE_DIR/scripts ~/.config/scripts

rm -rfv ~/.config/mako
ln -sfv $BASE_DIR/mako ~/.config/mako

sudo mkdir /etc/sddm.conf.d
sudo rm -rfv /etc/sddm.conf.d/sddm.conf
sudo ln -sfv $BASE_DIR/sddm.conf.d/sddm.conf /etc/sddm.conf.d/sddm.conf
sudo rm -rfv /usr/share/sddm/faces/issay.face.icon
sudo ln -sfv $BASE_DIR/sddm/ExaltedOrb.jpg /usr/share/sddm/faces/issay.face.icon

rm -rfv ~/.config/eww
ln -sfv $BASE_DIR/eww ~/.config/eww
