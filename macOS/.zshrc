# Prompt amb info de git
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
setopt PROMPT_SUBST
PROMPT='%n@%m %1~ $(__git_ps1 "(%s)")%# '

# Afegeix els binaris de MySQL al PATH
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# mvdw
export PATH="$HOME/.local/bin:$PATH"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"

# Cerca a l'històric basada en el que s'ha escrit
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# Dreceres
alias ll="ls -latr"

# Dreceres de Git
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gst="git status"
alias gs="git show"
alias gco="git checkout"
alias gcom="git checkout main"
alias grim="git rebase -i main"
alias gc="git commit"
alias gb="git branch"
alias gcob="git checkout -b"
alias gl="git pull"
alias ga="git add"
alias gaa="git add ."
alias glog="git log --oneline --graph --decorate --all"

export PATH="/opt/homebrew/bin:$PATH"

export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Database production connection
alias dbprod="ssh -i ~/.ssh/db-prod-pau.pem -L 5432:platform-read.cdm8wgcgcgip.us-east-2.rds.amazonaws.com:5432 ec2-user@18.116.80.113"
alias dbprod_rw="ssh -i ~/.ssh/db-prod-pau.pem -L 5433:platform.cdm8wgcgcgip.us-east-2.rds.amazonaws.com:5432 ec2-user@18.116.80.113"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
eval "$(direnv hook zsh)"
export PATH="$(brew --prefix)/share/google-cloud-sdk/bin:$PATH"
eval "$(mise activate zsh)"
