export PS1="\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\W \\$ \[$(tput sgr0)\]"
export PATH="${PATH}:${HOME}/.cargo/bin"
stty -ixon

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash
source ~/.aliasrc

