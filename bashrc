# Always call my adjustments first
[[ -f ~/.dotfiles/adam.sh ]] && . ~/.dotfiles/adam.sh

[[ -f ~/.dotfiles/custom-variables ]] && . ~/.dotfiles/custom-variables    # Custom variables not in source control
[[ -f ~/.dotfiles/paths ]] && . ~/.dotfiles/paths                          # Path Definitions
[[ -f ~/.dotfiles/aliases ]] && . ~/.dotfiles/aliases                      # Alias definitions
