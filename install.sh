#!/usr/bin/env bash

#configure the bash and the alias

cp ./template/aliasrc ~/.aliasrc ;
cp ./template/bashrc ~/.bashrc ;

#configure the neovim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' ;

cp ./template/init.vim ~/.config/nvim/init.vim ;

nvim -c ":PlugInstall"
#configure the fonts

ln -sf /usr/local/fonts ~/.fonts;
cp -r ./assets/fonts/* ~/.fonts;

# configure the project folder

mkdir ~/Documentos/Projetos

# Finalização
. /etc/os-release
printf "\t Agradecimentos para $USER por instalar esses dotfiles em $NAME $VERSION\n"
