#!/bin/env zsh

# Enable fzf
if [[ -x "$(which fzf)" ]]; then
  eval "$(fzf --zsh)" # COMMENT THIS OUT WHEN RUNNING ON DEBIAN 12 BOOKWORM
fi

# Enable zoxide
if [[ -x "$(which zoxide)" ]]; then
  eval "$(zoxide init --cmd cd zsh )" # COMMENT THIS OUT WHEN RUNNING ON DEBIAN 12 BOOKWORM
fi

# Enable ohmyposh
eval "$(oh-my-posh init zsh --config $XDG_CONFIG_HOME/ohmyposh/notrussel.yaml)"

# Enable starship
#eval "$(starship init zsh)"
