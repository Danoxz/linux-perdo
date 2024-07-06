#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Root requred"
    exit
fi

UHOME = /home/q

usermod -aG wheel q
export EDITOR="nvim"
echo "TODO : visudo -> allow group wheel to execute any command"

pacman -Suy neovim xorg libxft xorg-xinit ttf-jetbrains-mono git feh alacritty dmenu

cp .bash_aliases $UHOME/.bash_aliases
cp .bashrc $UHOME/.bashrc
echo "startx" >> $UHOME/.bash_profile
cp wallpaper.jpg $UHOME/.wallpaper.jpg

cp /etc/X11/xinit/xinitrc $UHOME/.xinitrc
cat xinitrc_addon >> $UHOME/.xinitrc 
echo "TODO : Delete garbage from old .xinitrc" 

cp dwm{,blocks} $UHOME/ -r
cd $UHOME/dwm
make install
cd $UHOME/dwmblocks
make install

cd $UHOME
git clone https://gitlab.com/jschx/ufetch.git
cp ufetch/ufetch-artix /usr/bin/ufetch
chmod +x /usr/bin/ufetch
rm -rf $UHOME/ufetch