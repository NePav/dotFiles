#!/bin/bash

#Install i3wm
sudo apt-get install i3

#isntall xorg
sudo apt-get install xorg

#Install i3gaps
sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt-get update

# Install i3blocks
sudo apt install i3blocks


# Install and configure Git
sudo apt-get install git

# Generate and install git key
ssh-keygen -t rsa -b 4096 -C "nenad.pavlovic@sentian.ai" -f /home/nenad/.ssh/id_rsa
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Clone my config files git repo
cd Documents
mkdir MyGitRepos
cd MyGitRepos
git clone git@github.com:NePav/dotFiles.git
cd dotFiles

# Copy i3 config file
sudo cp .config/i3/config /etc/i3/

# Copy i3-blocks config file
sudo cp .config/i3blocks/config /etc/i3blocks.conf

#Copy fonts
cp -r .fonts/ ~/

#Copy screen layouts
cp -r .screenlayout/ ~/

#Install compton
sudo apt install compton
sudo cp .config/compton.conf /etc/i3/


#Install ARandR
sudo apt install arandr

# Installing feh and copy background wallpapers
sudo apt-get install feh
cp -r Background/ ~/Pictures/

#Install flameshot
sudo apt install flameshot

echo 'Logout from Gnome and log-in using i3-debug-WM)'








