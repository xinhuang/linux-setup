#!/bin/sh

if [ ! -e ./install.sh ] then
    wget https://raw.githubusercontent.com/xinhuang/linux-setup/master/install.sh
fi

sh ./install.sh

add-apt-repository -y ppa:mpstark/elementary-tweaks-daily     # elementary-tweaks
add-apt-repository -y ppa:cybre/elementaryplus  # more elementary icons

apt-get update

apt-fast install -y ubuntu-restricted-extras
apt-fast install -y elementary-wallpapers-extra
apt-fast install -y elementaryplus

