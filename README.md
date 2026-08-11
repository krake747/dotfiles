# dotfiles

Generic, machine-agnostic shell configuration. Safe to use at work and at home.

## Contents

- `.bashrc` — minimal bash for the interactive shell:
  - Environment hooks for `mise` and `vite-plus`
  - Git aliases + helper functions (including `pr` to open a GitHub PR)
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

Or, on my Fedora machines, this is handled automatically by the
[`fedora`](https://github.com/krake747/fedora) provisioning playbook.
Any machine-specific config (e.g. git identity) lives in that personal repo,
not here.

## License

See `LICENSE`.