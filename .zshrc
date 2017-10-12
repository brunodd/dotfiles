#!/bin/zsh

autoload -U compinit
compinit

# correction
setopt correctall

# prompt
autoload -U promptinit
promptinit
prompt adam2

# Enable aliases
. ~/.zsh/.aliases

# Enable vim commands in zsh.
bindkey -v
export KEYTIMEOUT=1

# fix colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Set path
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
