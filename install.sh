#!/bin/bash

sudo apt update
sudo apt upgrade


## i3wm Ubuntu repository. Maybe must run these commented lines manualy!
# /usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2020.02.03_all.deb keyring.deb SHA256:c5dd35231930e3c8d6a9d9539c846023fe1a08e4b073ef0d2833acd815d80d48
# dpkg -i ./keyring.deb
# echo "deb https://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list
# apt update
# apt install i3

## Install i3wm
sudo apt-get install i3
sudo apt-get install i3-wm
sudo apt-get install i3-wm-dbg
sudo apt-get install i3-blocks
sudo apt-get install i3lock
sudo apt-get install i3lock-fancy
sudo apt-get install i3status
sudo apt-get install i3

## Install i3gaps
sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt-get update
sudo apt-get install i3-gaps-wm

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

## Install and configure Git
sudo apt-get install git

## Install compton
sudo apt install compton

## Install ARandR
sudo apt install arandr

## Install feh
sudo apt-get install feh

## Install Redshift (screen blue colour dimmer)
sudo apt-get redshift-gtk
sudo apt-get redshift

## Generate and install git key
ssh-keygen -t rsa -b 4096 -C "nenad.pavlovic@sentian.ai" -f /home/nenad/.ssh/id_rsa
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

## Clone my config files git repo
cd Documents
mkdir MyGitRepos
cd MyGitRepos
git clone git@github.com:NePav/dotFiles.git
cd dotFiles

## Copy i3 config file
sudo cp .config/i3/config /etc/i3/

## Copy i3-blocks config file
sudo cp .config/i3blocks/i3blocks.config /etc/i3blocks.conf

## Copy fonts
cp -r .fonts/ ~/

## Copy screen layouts
cp -r .screenlayout/ ~/

## Copy compton config file
sudo cp .config/compton.conf /etc/i3/

## Copy background wallpapers
cp -r Background/ ~/Pictures/

## Back to the previous home folder
cd ~/

## Install flameshot
sudo apt install flameshot

## Install htop
sudo apt install htop

echo 'Logout from Gnome and log-in using i3-debug-WM)'

## Create alias for settings control center
echo "my_settings='env XDG_CURRENT_DESKTOP=GNOME gnome-control-center'"  >> ~/.bash_aliases && source ~/.bash_aliases

## Install Fish Shell from here: https://fishshell.com/
## Launch Shell
## Create alias in Fish:
# alias my_settings='env XDG_CURRENT_DESKTOP=GNOME gnome-control-center'
# funcsave my_settings

## Install Ranger file manager
sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo
# Add devicons to Ranger
git clone https://github.com/ryanoasis/nerd-fonts.git --depth 1
cd nerd-fonts
./install.sh
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons







