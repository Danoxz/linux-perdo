#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Root requred"
    exit
fi

UHOME = /home/q

usermod -aG wheel q
export EDITOR="nvim"
echo "TODO : visudo -> allow group wheel to execute any command"

pacman -Suy neovim xorg libxft xorg-xinit ttf-jetbrains-mono git feh 

cp dwm $UHOME/dwm -r
cp dwmblocks $UHOME/dwmblocks -r


cp .bash_aliases $UHOME/.bash_aliases
echo "startx" >> $UHOME/.bash_profile
cp wallpaper.jpg $UHOME/.wallpaper.jpg
cp .bashrc $UHOME/.bashrc

cp /etc/X11/xinit/xinitrc $UHOME/.xinitrc
cat xinitrc_addon >> $UHOME/.xinitrc


