#!/bin/env zsh

# Neovim
if [[ -x "$(which nvim)" ]]; then
  alias vi=nvim
  alias vim=nvim
  alias vimdiff="nvim -d"
  alias nvimdiff="nvim -d"
fi

# Eza
if [[ -x "$(which eza)" ]]; then
  alias ls="eza --icons=always -ah --group-directories-first "
  alias ll="ls -l --git"
  alias lsa="ls -l --total-size"
fi

# Faster cd down one dir
alias ..="cd .."

# Fastfetch autostart
alias fetch="fastfetch --config $XDG_CONFIG_HOME/fastfetch/autostart.jsonc"

# Ripgrep search through hidden files
alias rg="rg -i --hidden"

# Faster way to use git
alias lg="lazygit"

# Faster way to manage dotfiles with yadm
alias ye="yadm enter fish"

# Alias fdfind to fd
if [[ -x "$(which fd)" ]]; then
  alias fd="fd -H"
fi
if [[ -x "$(which fdfind)" ]] ; then
  alias fd="fdfind -H"
fi
