#!/bin/bash
# https://github.com/Airblader/i3/wiki/Compiling-&-Installing

script_dir="$( cd "$(dirname "$0")"; pwd -P )"
pwd="$( pwd )"

# load echo colors
# source "${script_dir}/util/shell_colors.sh"

# echo -e "${GREEN}===== I3 Setup =====${COLOR_OFF}"
echo 'Installing feh (background wallpaper)'
sudo apt-get install feh

echo 'Installing i3 dependencies'
sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake i3 cmake

cd /tmp

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
