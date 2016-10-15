# .zshrc
# Initialize
autoload -Uz compinit promptinit
autoload -Uz colors && colors
compinit
promptinit

# Basic mappings
alias k='tree'
alias ltr='ls -ltr'
alias r='screen -D -R'
alias l='ls -lh'
alias ll='ls -la'
alias c='clear'

export TERM=rxvt
prompt adam2

# fix colors
export CLICOLOR=1
# export LSCOLORS=ExFxBxDxCxegedabagacad

# Vi mode
bindkey -v
