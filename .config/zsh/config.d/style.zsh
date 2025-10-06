#!/bin/env zsh

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # Case sensitivity
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # Show colours in path
zstyle ':completion:*' special-dirs true
#zstyle ':completion:*:default' menu select=2 # Shows box on completions

# Fzf completion styling
zstyle ':completion:*' menu no  # For fzf completions
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza --color=always --icons=always $realpath'  # For fzf completions
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza --color=always --icons=always $realpath'  # For fzf completions

zstyle ':completion:*' completer _complete _bash_completions _files
