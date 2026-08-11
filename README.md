# dotfiles

Generic, machine-agnostic shell configuration. Safe to use at work and at home.

## Contents

- `.bashrc` — minimal bash for the interactive shell:
  - Environment hooks for `mise`, `vite-plus`, Go, dotnet, and opencode
  - Git aliases + helper functions (including `pr` to open a GitHub PR)

## Setup

Clone and symlink the files you want:

```bash
gh repo clone krake747/dotfiles ~/dotfiles
ln -sf ~/dotfiles/.bashrc ~/.bashrc
```

Or, on my Fedora machines, this is handled automatically by the
[`fedora`](https://github.com/krake747/fedora) provisioning playbook.
Any machine-specific config (e.g. git identity) lives in that personal repo,
not here.

## License

See `LICENSE`.