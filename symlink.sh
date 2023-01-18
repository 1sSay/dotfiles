#!/usr/bin/env sh

BASE_DIR=/data/Documents/dotfiles

mkdir ~/.config

rm -rfv ~/.config/bspwm
ln -sfv $BASE_DIR/bspwm ~/.config/bspwm

rm -rfv ~/.config/picom
ln -sfv $BASE_DIR/picom ~/.config/picom

rm -rfv ~/.config/polybar
ln -sfv $BASE_DIR/polybar ~/.config/polybar

rm -rfv ~/.config/rofi
ln -sfv $BASE_DIR/rofi ~/.config/rofi

rm -rfv ~/.config/sxhkd
ln -sfv $BASE_DIR/sxhkd ~/.config/sxhkd

rm -rfv ~/.config/kitty
ln -sfv $BASE_DIR/kitty ~/.config/kitty

rm -rfv ~/.zshrc
ln -sfv $BASE_DIR/.zshrc ~/.zshrc

# chmod +x ~/.config/bspwm/bspwmrc
# chmod +x ~/.config/sxhkd/sxhkdrc
