#!/bin/env zsh

# TO ADD YOUR OWN CONFIGURATIONS (SUCH AS ALIASES), CREATE A FILE IN ~/.config/zsh/config.d/ WITH THE FILE EXTENSION .zsh

# Load plugins first
source $ZDOTDIR/config.d/plugins.zsh

# Load all other zsh configs
for config_file ($ZDOTDIR/config.d/*.zsh); do
  if [[ "$config_file" != "$ZDOTDIR/config.d/plugins.zsh" && "$config_file" != "$ZDOTDIR/config.d/style.zsh" ]]; then
    source "$config_file"
  fi
done

if [[ -x "$(which fastfetch)" ]] && [[ -f $XDG_CONFIG_HOME/fastfetch/autostart.jsonc ]]; then
  fetch
fi


# Load styling
source $ZDOTDIR/config.d/style.zsh
