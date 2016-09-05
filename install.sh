#!/bin/sh

add-apt-repository -y ppa:saiarcot895/myppa     # apt-fast
# add-apt-repository -y ppa:jfi/myppa             # psensor
add-apt-repository -y ppa:webupd8team/atom      # atom
add-apt-repository -y ppa:webupd8team/java      # java
add-apt-repository -y ppa:libreoffice/ppa       # libre office

apt-get update

apt-get -y install apt-fast

apt-fast -y install zsh git vim g++ ruby gem cmake gdb gcc
apt-fast -y install psensor atom 

# development libraries
# threading building blocks
apt-fast -y install libtbb2 libtbb-dev

# python & python packages
apt-fast -y install python python-dev
apt-fast -y install pip
pip install pip --upgrade
pip install ipython numpy jupyter

# rvm-prompt for oh-my-zsh
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable

# vim configuration
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget -O ~/.vimrc 'https://gist.githubusercontent.com/xinhuang/4336621/raw/935ca0812db4df77819a7eb27884e57b201207ba/vimrc'
vim +PluginInstall +qall

apt-fast install -y ubuntu-restricted-extras
# apt-fast install -y elementary-wallpapers-extra
# apt-fast install -y elementaryplus

# these are the slow ones
apt-fast install -y libreoffice
apt-fast install -y oracle-java7-installer oracle-java8-installer

# at last we install oh-my-zsh and switch to zsh shell
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "Please modify /etc/passwd file to change default shell to zsh."

