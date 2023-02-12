#!/bin/bash
#
#

echo "

~ Window Manager Configs ~

-> WM                          - i3
-> Terminal                    - kitty 
-> Application launcher        - Rofi 
-> Bar                         - polybar
-> Compositor                  - Picom 
-> Notification                - dunst 
-> Screenshot                  - imagemagick
-> Volume Control              - pavucontrol 
-> Policy kit Authentication   - polkit-gnome 
-> Wallpaper Utility           - feh 
-> File Manager                - pcmanfm
-> Screen Locker               - i3lock-fancy
-> Browser                     - qutebrowser  
-> colorscheme generator       - pywal 
"


sleep 4

# Dependencies 

echo "Installing Dependencies ..............."
sudo pacman -Sy polybar i3-wm rofi kitty brightnessctl nmtui dunst imagemagick pavucontrol feh pcmanfm qutebrowser python-pywal ttf-jetbrains-mono-nerd cantarell-fonts ttf-meslo-nerd noto-fonts materia-gtk-theme gtk-engines gtk-engine-murrine lxappearance

if [ $(pacman -Q paru | awk '{print $1}') == 'paru' ];
then
  paru -S i3lock-fancy python-pywalfox wal-telegram-git tela-circle-icon-theme-purple
else
  yay -S i3lock-fancy python-pywalfox wal-telegram-git tela-circle-icon-theme-purple
fi


echo "Cloning Repo in TMP"
mkdir /tmp/i3-MINI && git clone https://github.com/LinuxNerdBTW/i3-MINI.git && cd /tmp/i3-MINI
echo "Copying to ~/.config/"
cp -rv config/* ~/.config/
echo "Copying to ~/.local/share/"
cp -rv local/share/* ~/.local/share/

echo "
# Recommended Method for xinitrc file
# Add this line to your xinitrc file & be sure to comment previous line on xinitrc file 
#
#


i3_run() {
  wal -R
  exec i3
}

session=$1

case $session in
    i3 	) i3_run;;
esa

"

echo "
Ways to run . 

If you dont use login manager , 
on virtual console , 
you can simply type , 
startx ~/.xinitrc i3 
or make alias like , alias x="startx ~/.xinitrc" 
and simply type : x i3 on virtual console 

"



