# dotfiles
 
This installs Homebrew and Xcode Command Line Tools, clones this repo to `~/.dotfiles`, installs everything in the `Brewfile`, and symlinks `~/.vimrc` and `~/.zshrc` to the repo copies, and applies basic preferences.
 
## New Mac
 
1. Grant permission to manage apps, or updates will fail: \
   `System Settings → Privacy & Security → App Management → turn on Terminal / iTerm`
2. Copy and paste the following:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jeremyjkerby/dotfiles/main/bootstrap.sh)"
```
 
3. Apply system preferences:
```bash
bash ~/.dotfiles/macos.sh
```
 
4. Fill in your Git identity:
 
```ini
[user]
    name = [ADD NAME]
    email = [ADD EMAIL]
```
