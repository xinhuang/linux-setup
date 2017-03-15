#!/bin/sh

sudo add-apt-repository -y ppa:saiarcot895/myppa     # apt-fast
sudo add-apt-repository -y ppa:webupd8team/atom      # atom
sudo add-apt-repository -y ppa:webupd8team/java      # java
sudo add-apt-repository -y ppa:libreoffice/ppa       # libre office
sudo add-apt-repository -y ppa:daniel.pavel/solaar

sudo apt-get update

sudo apt-get -y install apt-fast

sudo apt-fast -y install zsh git vim g++ ruby gem cmake gdb gcc
sudo apt-fast -y install psensor atom solaar alacarte

# development libraries
# threading building blocks
sudo apt-fast -y install libtbb2 libtbb-dev

# python & python packages
sudo apt-fast -y install python python-dev
sudo apt-fast -y install python-pip
sudo pip install pip --upgrade
sudo pip install ipython numpy jupyter

# rvm-prompt for oh-my-zsh
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | sudo bash -s stable

# vim configuration
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget -O ~/.vimrc 'https://gist.githubusercontent.com/xinhuang/4336621/raw/935ca0812db4df77819a7eb27884e57b201207ba/vimrc'
vim +PluginInstall +qall

sudo apt-fast install -y ubuntu-restricted-extras

# these are the slow ones
# sudo apt-fast install -y libreoffice
# sudo apt-fast install -y oracle-java7-installer oracle-java8-installer

# at last we install oh-my-zsh and switch to zsh shell
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "Please modify /etc/passwd file to change default shell to zsh."

sudo apt-fast -y install autojump
wget http://www.trapkit.de/tools/checksec.sh

