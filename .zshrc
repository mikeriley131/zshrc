export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH="$HOME:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export LC_ALL=en_US.UTF-8

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias python=python3

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3 # run chruby to see actual version

# Prompt configuration
autoload -Uz vcs_info
precmd() { vcs_info }

git_prompt() {
    local branch="$(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3-)"

    [ -n "${branch}" ] && echo "${branch}"
}

setopt PROMPT_SUBST

PROMPT='%K{green}%F{black}%f%k%K{green}%F{black} %1~ %f%k%K{white}%F{green}%f%k%K{white}%F{black} $(git_prompt) %f%k%F{white}%f $ '

# Available colors: black, red, green, yellow, blue, magenta, cyan and white

alias gs="git status"
alias gp="git pull"
alias gc="git commit -m "
alias gca="git commit -am "
alias gco="git checkout "
alias gbn="git checkout -b "
alias gbd="git branch -D "
alias gpo="git push -u origin "
