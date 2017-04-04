#!/bin/sh

sudo apt-get update
# because there is no add-apt-repository
sudo apt-get -y install software-properties-common

sudo add-apt-repository -y ppa:saiarcot895/myppa     # apt-fast
sudo add-apt-repository -y ppa:parallella/snapshot

sudo apt-get update

sudo apt-get -y install apt-fast

sudo apt-fast -y install zsh git vim g++ ruby gem cmake gdb gcc
sudo apt-fast -y install parallella-utils
sudo apt-fast -y install apt-file
apt-file update

# development libraries
# threading building blocks
sudo apt-fast -y install libtbb2 libtbb-dev

# python & python packages
sudo apt-fast -y install python python-dev python-pip
sudo -H pip install pip --upgrade
sudo -H pip install ipython
# sudo -H pip install numpy jupyter     # too slow

# rvm-prompt for oh-my-zsh
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | sudo bash -s stable

# vim configuration
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget -O ~/.vimrc 'https://gist.githubusercontent.com/xinhuang/4336621/raw/935ca0812db4df77819a7eb27884e57b201207ba/vimrc'
vim +PluginInstall +qall

# sudo apt-fast install -y ubuntu-restricted-extras

# sudo apt-fast install -y oracle-java7-installer oracle-java8-installer

sudo apt-fast -y install autojump
# at last we install oh-my-zsh and switch to zsh shell
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "Please modify /etc/passwd file to change default shell to zsh."

