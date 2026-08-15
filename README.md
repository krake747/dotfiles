# dotfiles

Generic, machine-agnostic shell configuration. Safe to use at work and at home.

## Contents

- `.bashrc` — minimal bash for the interactive shell:
  - Environment hooks for `mise` and `vite-plus`
  - Sources `bashrc.d/git.sh`
- `bashrc.d/git.sh` — git aliases + helper functions (including `pr` to open a
  GitHub PR). Kept in its own file so it can be sourced on machines that have
  their own `.bashrc` (e.g. Omarchy) without clobbering it.
- `.bash_profile` — login shell setup:
  - Sources `.bashrc`
  - Exports PATH once for Go, dotnet, and opencode

## Setup

Clone and symlink the files you want:

```bash
gh repo clone krake747/dotfiles ~/dotfiles
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
```

> Login shells read `.bash_profile`; interactive-only shells read `.bashrc`, which
> sources no login setup on its own. If your login shell doesn't pick up `.bashrc`
> automatically, have `.bash_profile` source it (this repo's version already does).

On a machine that already has its own `.bashrc` (e.g. Omarchy), don't symlink
over it — just source the shared git file from it:

```bash
source ~/dotfiles/bashrc.d/git.sh
```

Any machine-specific config (e.g. git identity) lives in that personal repo,
not here.

## License

See `LICENSE`.