#!/usr/bin/env sh

BASE_DIR=/data/Documents/dotfiles-hyprland

mkdir ~/.config

rm -rfv ~/.config/hypr
ln -sfv $BASE_DIR/hypr ~/.config/hypr

rm -rfv ~/.config/waybar
ln -sfv $BASE_DIR/waybar ~/.config/waybar
