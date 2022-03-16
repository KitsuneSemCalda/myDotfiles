#!/bin/bash

#update system 
sudo apt update ; 
sudo apt upgrade -y ;
#install dependencies
sudo apt install build-essential default-jdk libssl-dev exuberant-ctags -y && 
sudo apt install ncurses-term ack-grep silversearcher-ag fontconfig -y &&
sudo apt install imagemagick libmagickwand-dev software-properties-common git curl -y &&
sudo apt install python3 python3-pip python3-venv &&


#configuring fonts 
sudo cp -r ./fonts/* /usr/local/share/fonts/ &&
fc-cache -fv &&

# configuring /home 
mkdir ~/Projetos/ &&
touch ~/.aliasrc &&
cp ./aliasrc ~/.aliasrc &&
cat /dev/null > ~/.bashrc &&
cp ./bashrc ~/.bashrc &&

### install asdf

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0

# install asdf langs

asdf plugin add nodejs ;
asdf install nodejs 17.5.0 &&
asdf global nodejs 17.5.0 &&

asdf plugin add golang ; 
asdf install golang 1.17.7 &&
asdf global golang 1.17.7 &&

asdf plugin add lua ;
asdf install lua 5.4.4 &&
asdf global lua 5.4.4 &&

asdf plugin add ruby ;
asdf install ruby 3.1.1 &&
asdf global ruby 3.1.1 &&

asdf plugin add rust ;
asdf install rust 1.58.1 &&
asdf global rust 1.58.1 &&

asdf plugin install python;
asdf install python 3.10.2 &&
asdf global python 3.10.2 &&

# install program writed with rust

cargo install bat exa duf fd;

# install lunarvim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh) -y ; 
source ~/.bashrc &&

