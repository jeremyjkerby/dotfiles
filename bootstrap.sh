#!/bin/bash
# ===
# bootstrap.sh
# Author: Jeremy
# Description: Installs Homebrew, clones this repo, runs `brew bundle`.
# ===
set -e

REPO="https://github.com/jeremyjkerby/dotfiles.git"
DIR="$HOME/.dotfiles"

# Install Homebrew and Command Line Tools
if [ ! -x /opt/homebrew/bin/brew ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"
if ! grep -q 'brew shellenv' ~/.zprofile 2>/dev/null; then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
fi

# Clone the repo or update it
if [ -d "$DIR/.git" ]; then
  git -C "$DIR" pull --ff-only
else
  git clone "$REPO" "$DIR"
fi

# Install everything in the Brewfile
brew bundle --verbose --file="$DIR/Brewfile"
