#!/bin/env zsh

# Load completions
autoload -Uz compinit && compinit -d "$ZDOTDIR/.zcompdump"

# Download zinit if it's missing, define it's path and load it.
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# add zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light fdellwing/zsh-bat
zinit light Aloxaf/fzf-tab  # Optional for fzf completions

# Add in snippets
zinit snippet OMZP::command-not-found

zinit cdreplay -q
