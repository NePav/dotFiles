#!/bin/bash

sudo apt update
sudo apt upgrade

## Install fish shell and make it default
sudo apt install fish
chsh -s /usr/bin/fish

## Install and configure Git
sudo apt install git
git config --global user.name   "NePav"
git config --global user.email  "nenad.pavlovic@sentian.ai"
git config --global color.ui auto

## Copy and register old SSH keys
#cp /path/to/my/key/id_rsa ~/.ssh/id_rsa
#cp /path/to/my/key/id_rsa.pub ~/.ssh/id_rsa.pub
## change permissions on file
#sudo chmod 600 ~/.ssh/id_rsa
#sudo chmod 600 ~/.ssh/id_rsa.pub
## start the ssh-agent in the background
#eval $(ssh-agent -s)
## make ssh agent to actually use copied key
#ssh-add ~/.ssh/id_rsa

## Git clone my config files 
git clone https://github.com/NePav/dotFiles.git ~/Documents/MyGits

## In case of lsot git keys do the following:
## Generate and install git key
#ssh-keygen -t rsa -b 4096 -C "nenad.pavlovic@sentian.ai" -f /home/nenad/.ssh/id_rsa
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
##
## Else, migrate the existing keys!!!
## Generating new keys will require updating those to all places, such as git, 
## where they are used.

## Copy fonts
cp -r ~/Documents/MyGits/dotFiles/.fonts/ ~/

## Copy background wallpapers
cp -r ~/Documents/MyGits/dotFiles/Background/ ~/Pictures/Background

## Install ARandR
sudo apt install arandr
## Copy screen layouts
cp -r ~/Documents/MyGits/dotFiles/.screenlayout/ ~/

## Install feh
sudo apt-get install feh

## Install flameshot
sudo apt install flameshot

## Install htop
sudo apt install htop

## Install urxvt terminal
sudo apt install rxvt-unicode
# MANUAL ACTION!!! : Copy .Xresources to ~/
# See: https://addy-dclxvi.github.io/post/configuring-urxvt/
xrdb ~/.Xresources
# Instal libraries required for urxvt
git clone https://github.com/muennich/urxvt-perls.git ~/.urxvt/ext/

## Install pywal. Color palet generator based on BG image
pip3 install pywal
# Chose current Background image name to generate pallet from
wal -i ~/Pictures/Background/bg_creative_1_3440_1440.jpeg

##Add this lines to ~/.bash.rc (reminder: remove one # from each of the following lines)
## Import colorscheme from 'wal' asynchronously
## &   # Run the process in the background.
## ( ) # Hide shell job control messages.
#(cat ~/.cache/wal/sequences &)
## Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences


## Rofi is a launcher similar to dmenu that we used in the beginnings, but it is better. 
sudo apt isntall rofi

## i3wm Ubuntu repository. Maybe must run these commented lines manualy!
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2020.02.03_all.deb keyring.deb SHA256:c5dd35231930e3c8d6a9d9539c846023fe1a08e4b073ef0d2833acd815d80d48
sudo dpkg -i ./keyring.deb
# sudo echo "deb https://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list
apt update

## Install i3wm
sudo apt-get install i3
sudo apt-get install i3-wm
sudo apt-get install i3-wm-dbg
sudo apt-get install i3blocks
sudo apt-get install i3lock
sudo apt-get install i3lock-fancy
sudo apt-get install i3status

## Install i3gaps
sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt-get update
sudo apt-get install i3-gaps-wm

## In case i3wm does not appear in the list of environments when you try to login, 
## copy i3.desktop file into: /usr/share/applications/ and /usr/share/xsessions/

## !!! OPTIONAL - instead of i3-Blocks !!!
## Install Ploybar## Link: https://gist.github.com/kuznero/f4e983c708cd2bdcadc97be695baacf8
## Colors: https://github.com/unix121/i3wm-themer/blob/master/themes/001.json
## During the build process answer Yes to all the options (except the first on on using GCC instead of CLang if available). And in the end say Yes to run sudo make install.

#sudo apt-get install \
#  cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev \
#  libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev \
#  libxcb-util0-dev libxcb-xkb-dev pkg-config python3-xcbgen \
#  xcb-proto libxcb-xrm-dev libasound2-dev libmpdclient-dev \
#  libiw-dev libcurl4-openssl-dev libpulse-dev \
#  libxcb-composite0-dev xcb libxcb-ewmh2 libjsoncpp-dev

#cd /tmp
#git clone https://github.com/jaagr/polybar.git
#cd polybar
#git tag # see what version do you need
## Update version from 3.5.0 to the latest based on tag output
#git checkout 3.5.0
#./build.sh

#cd dotFiles

# Copy config file and launch.sh
#sudo cp /polybar/config $HOME/.config/polybar/config
#sudo cp /polybar/launch.sh $HOME/.config/polybar/launch.sh
#sudo chmod +x $HOME/.config/polybar/launch.sh
## !!! END of OPTIONAL - instead of i3-Blocks !!!


## install xorg
sudo apt-get install xorg

## Install compton
sudo apt install compton

## Install Redshift (screen blue colour dimmer)
sudo apt-get redshift-gtk
sudo apt-get redshift

## Copy i3 config file
sudo cp ~/Documents/MyGits/dotFiles/.config/i3/config /etc/i3/

## Copy i3-blocks config file
sudo cp ~/Documents/MyGits/dotFiles/.config/i3blocks/i3blocks.config /etc/i3blocks.conf


## Copy compton config file
sudo cp ~/Documents/MyGits/dotFiles/.config/compton.conf /etc/i3/

echo 'Logout from Gnome and log-in using i3-debug-WM)'

## Create alias for settings control center (if needed)
#echo "my_settings='env XDG_CURRENT_DESKTOP=GNOME gnome-control-center'"  >> ~/.bash_aliases && source ~/.bash_aliases

## Install Fish Shell from here: https://fishshell.com/
## Launch Shell
## Create alias in Fish:
# alias my_settings='env XDG_CURRENT_DESKTOP=GNOME gnome-control-center'
# funcsave my_settings

## Install Ranger file manager
sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo
# Add devicons to Ranger
git clone https://github.com/ryanoasis/nerd-fonts.git --depth 1 ~/Documents/MyGits/
cd ~/Documents/MyGits/dotFiles/nerd-fonts
./install.sh
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons


