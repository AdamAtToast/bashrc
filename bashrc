# Always call my adjustments first
[[ -f ~/.dotfiles/adam ]] && . ~/.dotfiles/adam


# Custom variables not in source control
if [ -f ~/.dotfiles/custom-variables ]; then
  . ~/.dotfiles/custom-variables
fi

# Path Definitions
if [ -f ~/.dotfiles/paths ]; then
  . ~/.dotfiles/paths
fi

# Alias definitions.
if [ -f ~/.dotfiles/aliases ]; then
  . ~/.dotfiles/aliases
fi

