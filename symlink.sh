#!/usr/bin/env sh

BASE_DIR=/data/Documents/dotfiles-hyprland

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
