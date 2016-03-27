#!/bin/sh

add-apt-repository -y ppa:saiarcot895/myppa     # apt-fast
add-apt-repository -y ppa:jfi/myppa             # psensor
add-apt-repository -y ppa:webupd8team/atom      # atom
add-apt-repository -y ppa:webupd8team/java      # java
add-apt-repository ppa:mpstark/elementary-tweaks-daily     # elementary-tweaks
sudo add-apt-repository ppa:cybre/elementaryplus    # more elementary icons

apt-get update

apt-get -y install apt-fast

apt-fast -y install zsh git vim python g++ ruby gem cmake gdb gcc
apt-fast -y install psensor atom oracle-java7-installer oracle-java8-installer

# rvm-prompt for oh-my-zsh
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# vim configuration
# TODO: get .vimrc
vim +PluginInstall +qall

apt-get install ubuntu-restricted-extras
apt-fast install elementary-wallpapers-extra
apt-get install elementaryplus
