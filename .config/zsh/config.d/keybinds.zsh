#!/bin/env zsh

# Emacs mode in prompt
bindkey -e

# Add edit current command in $EDITOR
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

# Ctrl + right left arrow
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char

# Esc + backspace bash parity
backward-kill-dir () {
    local WORDCHARS=${${WORDCHARS/\/}/.}
    zle backward-kill-word
    zle -f kill
}
zle -N backward-kill-dir
bindkey '^[^?' backward-kill-dir

