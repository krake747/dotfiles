### ─── INTERACTIVE CHECK ─────────────────────────────
case $- in
  *i*) ;;
    *) return;;
esac

### ─── PROMPT ─────────────────────────────
export PS1='\w\$ '

### ─── ENVIRONMENT ─────────────────────────────
# mise (language/version manager, incl. Go)
[ -f /usr/bin/mise ] && eval "$(/usr/bin/mise activate bash)"

# vite-plus (Node.js + pnpm manager)
[ -f ~/.vite-plus/env ] && . ~/.vite-plus/env

# ─── GIT ALIASES & FUNCTIONS ─────────────────────────────
source ~/dotfiles/bashrc.d/git.sh