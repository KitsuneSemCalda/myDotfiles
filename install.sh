#!/bin/env bash

#----------------------------- Install Asdf --------------------------------------------------------
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0
printf "Asdf Instalado com Sucesso \n" &&
#----------------------------- Configuring fonts ---------------------------------------------------
sudo mkdir /usr/share/fonts/
sudo cp -r ./assets/fonts/* /usr/local/share/fonts/. &&
fc-cache -fv &&
ln -sf /usr/local/share/fonts/ ~/.fonts
printf "Fonts FiraCode com NerdFonts instalados com sucesso \n" && 
#---------------------------- Configuring Bashrc template ------------------------------------------
cat /dev/null > ~/.bashrc &&
cp ./template/bashrc ~/.bashrc &&
touch ~/.aliasrc &&
cp ./template/aliasrc ~/.aliasrc &&
printf "Templates for bashrc and aliasrc configurados com sucesso \n" &&
# ----------------------- Install Lunarvim ---------------------------------------------------------
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh) -y &&
printf "Lunarvim instalado com sucesso \n"
# ----------------------- Install Rust Tools -------------------------------------------------------
cargo install bat exa &&
printf "Ferramentas em rust instaladas com sucesso \n"
# ----------------------- Criando aplicação asdf-reload --------------------------------------------
sudo cp ./src/asdf-reload /usr/bin/. &&
printf "Asdf-reload instalado \n"
# ----------------------- Reload bashrc ------------------------------------------------------------
clear &&
source ~/.bashrc &&
# -------------------------- Install Asdf Languages ------------------------------------------------
asdf plugin add python ;
asdf plugin add golang ;
asdf plugin add ruby ;
asdf plugin add rust ;
asdf plugin add lua ;
asdf plugin add nodejs ;

asdf install python 3.10.2 &&
asdf install golang 1.17.7 &&
asdf install ruby 3.1.1 &&
asdf install rust 1.58.1 &&
asdf install lua 5.4.4 &&
asdf install nodejs 17.5.0 &&

asdf global python 3.10.2 &&
asdf global golang 1.17.7 &&
asdf global ruby 3.1.1 &&
asdf global rust 1.58.1 &&
asdf global lua 5.4.4 &&
asdf global nodejs 17.5.0 &&

printf "Linguagens instaladas com sucesso \n" &&

