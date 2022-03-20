#!/usr/bin/env bash

#----------------------------- Install Asdf --------------------------------------------------------
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0
printf '%b'"\t\e[32;1m Asdf Instalado com Sucesso \n\e[m" &&
#----------------------------- Configuring fonts ---------------------------------------------------
sudo mkdir /usr/share/fonts/
sudo cp -r ./assets/fonts/* /usr/local/share/fonts/. &&
fc-cache -f &&
ln -sf /usr/local/share/fonts/ ~/.fonts
printf '%b'"\t\e[32;1mFonts FiraCode com NerdFonts instalados com sucesso \n\e[m" && 
#---------------------------- Configuring Bashrc template ------------------------------------------
cat /dev/null > ~/.bashrc &&
cp ./template/bashrc ~/.bashrc &&
touch ~/.aliasrc &&
cp ./template/aliasrc ~/.aliasrc &&
printf '%b'"\t\e[32;1mTemplates for bashrc and aliasrc configurados com sucesso \n\e[m" &&
# ----------------------- Install Lunarvim ---------------------------------------------------------
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh) -y &&
clear &&
printf '%b'"\t\e[32;1mLunarvim instalado com sucesso \n\e[m"
# ----------------------- Criando aplicação asdf-reload --------------------------------------------
sudo cp ./src/asdf-reload /usr/bin/. &&
printf '%b'"\t\e[32;1mAsdf-reload instalado \n\e[m"
# ----------------------- Reload bashrc ------------------------------------------------------------
clear &&
. ~/.bashrc &&
# -------------------------- Install Asdf Languages ------------------------------------------------
asdf plugin-add python ;
asdf plugin-add golang ;
asdf plugin-add ruby ;
asdf plugin-add rust ;
asdf plugin-add lua ;
asdf plugin-add nodejs ;

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

printf '%b'"\t\e[32;1mLinguagens instaladas com sucesso \n\e[m" &&
# ----------------------- Install Rust Tools -------------------------------------------------------
cargo install bat exa &&
printf '%b'"\t\e[32;1mFerramentas em rust instaladas com sucesso \n\e[m" &&
# ----------------------- Agradecimento ------------------------------------------------------------
. /etc/os-release
printf "\nFico feliz pelo uso do myDotfiles, agradecimentos a $USER por instalar em $NAME $VERSION\n"
