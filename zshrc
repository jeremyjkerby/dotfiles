# ===
# .zshrc
# Author: Jeremy
# Description: My zsh config; drop in ~ as .zshrc.
# ===

# ===
# General
# ===
export EDITOR='vim'
export CLICOLOR=1

# ===
# Prompt
# ===
# time  user@host  current-dir  %
PROMPT='%F{yellow}%T%f %F{green}%n@%m%f %F{blue}%1~%f %# '

# ===
# History
# ===
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
HIST_STAMPS="mm/dd/yyyy"
setopt EXTENDED_HISTORY       # record a timestamp per command
setopt HIST_IGNORE_DUPS       # don't store consecutive duplicates
setopt SHARE_HISTORY          # share history across open terminals

# ===
# Options
# ===
setopt AUTO_CD                # type a folder name to cd into it
autoload -Uz compinit && compinit   # tab completion

# ===
# Aliases
# ===
alias cp='cp -iv'
alias du='du -h'
alias ll='ls -al'
alias ln='ln -iv'
alias ls='ls -FGlAhp'
alias mkdir='mkdir -pv'
alias mv='mv -iv'

# ===
# Functions
# ===
function weather() {
  curl -s "https://wttr.in/${1:-Dubai}?m&format=3"
}
