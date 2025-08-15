# Afegeix els binaris de MySQL al PATH
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# mvdw
export PATH="$HOME/.local/bin:$PATH"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"

# Configuració de pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Cerca a l'històric basada en el que s'ha escrit
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# Dreceres
alias ll="ls -latr"

# Dreceres de Git
alias gp="git push"
# alias gpf="git push --force"
alias gst="git status"
alias gs="git show"
alias gco="git checkout"
alias gcom="git checkout main"
alias gc="git commit"
alias gb="git branch"
alias gcob="git checkout -b"
alias gl="git pull"
alias ga="git add"
alias gaa="git add ."
alias glog="git log --oneline --graph --decorate --all"

# Barra del terminal (starship)
eval "$(starship init zsh)"

export PATH="/opt/homebrew/bin:$PATH"

eval "$(~/.local/bin/mise activate)"
