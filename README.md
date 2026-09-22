# dotfiles

This installs Homebrew and Xcode Command Line Tools, clones this repo to `~/.dotfiles`, installs everything in the `Brewfile`, and symlinks `~/.vimrc` to the repo copy.

## New Mac

1. Grant permission to manage apps, or updates will fail: \
   `System Settings → Privacy & Security → App Management → turn on Terminal / iTerm`

2. Copy and paste the following:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jeremyjkerby/dotfiles/main/bootstrap.sh)"
```

## What's here

| File | Purpose |
|---|---|
| `Brewfile` | Every CLI tool and app I use, installed with `brew bundle` |
| `bootstrap.sh` | Installs Homebrew, clones this repo, runs the Brewfile, links vimrc |
| `vimrc` | My Vim config, symlinked to `~/.vimrc` |
