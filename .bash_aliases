# ─── GENERAL ALIASES ─────────────────────────────
alias reload="source ~/.bashrc"
alias bashrc="code ~/.bashrc"
alias bashrcgit="code ~/.bash_git"
alias bashaliases="code ~/.bash_aliases"

# dotnet
alias dn="dotnet"

# docker
alias d="docker"
alias dkill="docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker network prune"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dcd="docker compose down"
alias dcu="docker compose up -d"
alias dcub="docker compose up -d --build"
alias dcw="docker compose watch"
alias dcreset="dcd && dcu"

# kubectl
alias k="kubectl"
complete -o default -F __start_kubectl k
