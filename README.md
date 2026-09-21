# dotfiles
 
One command takes a fresh Mac to a working development machine.
 
## New Mac
 
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jeremyjkerby/dotfiles/main/bootstrap.sh)"
```
 
This installs Homebrew, Xcode Command Line Tools, clones this repo to `~/.dotfiles`, and installs everything in the `Brewfile`.
 
## What's here
 
| File | Purpose |
|---|---|
| `Brewfile` | Every Homebrew app I use |
| `bootstrap.sh` | Install Homebrew, clones this repo, run the Brewfile |
| `vimrc` | My Vim config |
