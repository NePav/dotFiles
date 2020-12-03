#!/bin/bash


## i3wm Ubuntu repository. Maybe must run these commented lines manualy!
# /usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2020.02.03_all.deb keyring.deb SHA256:c5dd35231930e3c8d6a9d9539c846023fe1a08e4b073ef0d2833acd815d80d48
# dpkg -i ./keyring.deb
# echo "deb https://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list
# apt update
# apt install i3

## Install i3wm
sudo apt-get install i3
sudo apt-get install i3-wm
sudo apt-get install i3-blocks
sudo apt-get install i3lock-fancy
sudo apt-get install i3status
sudo apt-get install i3

## Install i3gaps
sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt-get update
sudo apt-get install i3-gaps-wm

## install xorg
sudo apt-get install xorg

## Install and configure Git
sudo apt-get install git

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
sudo cp .config/i3blocks/config /etc/i3blocks.conf

## Copy fonts
cp -r .fonts/ ~/

## Copy screen layouts
cp -r .screenlayout/ ~/

## Install compton
sudo apt install compton
sudo cp .config/compton.conf /etc/i3/

## Install ARandR
sudo apt install arandr

## Installing feh and copy background wallpapers
sudo apt-get install feh
cp -r Background/ ~/Pictures/

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






