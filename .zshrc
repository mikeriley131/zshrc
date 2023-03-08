source $HOME/.zshenv
eval "$(rbenv init - zsh)"
export PATH=$HOME/bin:/usr/local/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.gem/ruby/2.6.4/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
export PATH="$HOME:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

alias python=python3

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b'

setopt PROMPT_SUBST
PROMPT='%K{green}%F{black}%f%k%K{green}%F{black} %1~ %f%k%K{yellow}%F{green}%f%k%K{yellow}%F{black} ${vcs_info_msg_0_} %f%k%F{yellow}%f $ '
