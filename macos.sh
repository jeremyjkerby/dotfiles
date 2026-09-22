#!/bin/bash
# ===
# macos.sh
# Author: Jeremy
# Description: Sets macOS system preferences.
# ===
set -e

echo "Applying macOS preferences..."

# ===
# Keyboard
# ===
# Fast key repeat
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15
# Disable press-and-hold for accent menu
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# ===
# Appearance
# ===
# Use dark mode
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"
# Expand save and print dialogs to full view
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# ===
# Text input (off for coding: these mangle code and terminal commands)
# ===
# Straight quotes stay straight
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
# Double hyphens stay as --
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
# No auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# ===
# Finder
# ===
# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true
# Show path bar and status bar at the bottom of windows
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true
# Search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# ===
# Dock
# ===
# Smaller icons
defaults write com.apple.dock tilesize -int 42

# Rebuild dock in this order
if command -v dockutil >/dev/null; then
  dockutil --remove all --no-restart 2>/dev/null || true
  for app in \
    "/Applications/Xcode.app" \
    "/Applications/iTerm.app" \
    "/Applications/Claude.app" \
    "/Applications/Postman.app" \
    "/Applications/Figma.app" \
    "/Applications/Obsidian.app" \
    "/Applications/Safari.app" \
    "/Applications/WhatsApp.app" \
    "/System/Applications/App Store.app" \
    "/System/Applications/System Settings.app"; do
    [ -e "$app" ] && dockutil --add "$app" --no-restart 2>/dev/null || true
  done
fi

# ===
# Menu
# ===
# Show battery percentage in the menu bar
defaults -currentHost write com.apple.controlcenter BatteryShowPercentage -bool true

# ===
# Screenshots
# ===
# Save to ~/Screenshots not ~/Desktop
mkdir -p "${HOME}/Screenshots"
defaults write com.apple.screencapture location -string "${HOME}/Screenshots"
# Save as PNG
defaults write com.apple.screencapture type -string "png"

# ===
# Apply changes
# ===
killall Finder Dock SystemUIServer ControlCenter 2>/dev/null || true
echo "Done. Some changes need a logout or restart to fully apply."
