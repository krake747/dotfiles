### ─── INTERACTIVE CHECK ─────────────────────────────
case $- in
  *i*) ;;
    *) return;;
esac

### ─── OH MY BASH ─────────────────────────────
export OSH="$HOME/.oh-my-bash"
OSH_THEME="ht"
OMB_USE_SUDO=true
completions=(git composer ssh)
aliases=(general)
plugins=(git bashmarks)
source "$OSH/oh-my-bash.sh"

### ─── LOAD CUSTOM FILES ─────────────────────────────
[ -f ~/.bash_git ] && source ~/.bash_git
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

### ─── ENVIRONMENT ─────────────────────────────
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

export PNPM_HOME="$HOME/.local/share/pnpm"
[[ ":$PATH:" != *":$PNPM_HOME:"* ]] && export PATH="$PNPM_HOME:$PATH"

export PATH="$PATH:/usr/local/go/bin:/opt/nvim/bin:/opt/nvim/usr/bin"
export ZED_ALLOW_EMULATED_GPU=1
alias zed="WAYLAND_DISPLAY= zed"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# opencode
export PATH=/home/krake/.opencode/bin:$PATH

# dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$HOME/.dotnet:$HOME/.dotnet/tools
