#!/bin/bash

#Create and enter temprary installation folder
mkdir -p installTmp && cd installTmp/

#Install i3wm
sudo apt-get install i3

#isntall xorg
sudo apt-get install xorg


#Install i3gaps
sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt-get update

## Install dependencies
#sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
#libxcb-util0-dev libxcb-icccm4-dev libyajl-dev \
#libstartup-notification0-dev libxcb-randr0-dev \
#libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
#libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev \
#autoconf libxcb-xrm0 libxcb-xrm-dev automake libxcb-shape0-dev

#cd /tmp

## clone the repository
#git clone https://www.github.com/Airblader/i3 i3-gaps
#cd i3-gaps

## compile & install
#autoreconf --force --install
#rm -rf build/
#mkdir -p build && cd build/

## Disabling sanitizers is important for release versions!
## The prefix and sysconfdir are, obviously, dependent on the distribution.
#../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
#make
#sudo make install

# Install i3blocks
sudo apt install i3blocks

## clone the repository
#git clone https://github.com/vivien/i3blocks
#cd i3blocks
#./autogen.sh
#./configure
#make
#make install


