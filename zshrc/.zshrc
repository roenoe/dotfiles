# Download zinit if it's missing, define it's path and load it.
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# add zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
#zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
#zinit light Aloxaf/fzf-tab  # Optional for different completions

# Add in snippets
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit
zinit cdreplay -q

# Keybindings
bindkey "^[[1;5C" forward-word	# ctrl + right arrow
bindkey "^[[1;5D" backward-word	# ctrl + left arrow
bindkey "^[[3~" delete-char	# del key
bindkey -e  # emacs in vim?

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
#zstyle ':completion:*' menu no  # Optional for different completions
#zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'  # Optional for different completions
#zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'  # Optional for different completions, using zoxide

# Environment variables
export PATH=$PATH:$HOME/.local/bin/ # Make sure oh-my-posh is in $PATH
export TERM=xterm-256color          # Compatibility with other machines
export EDITOR=nvim                  # Chezmoi get correct editor
export HOSTNAME=$(uname -n)         # Better compatibility with bash stuff

# Get correct $MACHINAHOSTNAME variable in prod
if [[ -f "/etc/machinahostname" ]]
then
  export MACHINAHOSTNAME=$(echo "[$(cat /etc/machinahostname | cut -f1-3 -d".")]")
else
  export MACHINAHOSTNAME=$(uname -n)
fi

# Aliases
alias vi=nvim           # nvim own commands
alias vim=nvim          # nvim own commands
alias vimdiff="nvim -d" # nvim own commands
alias ls="ls --color -a"   # colourful ls command
alias ..="cd .."        # faster down one dir
alias fetch="fastfetch --config ~/.config/fastfetch/autostart.jsonc"

# Shell integrations
eval "$(fzf --zsh)"

# Exc + backspace bash parity
backward-kill-dir () {
    local WORDCHARS=${WORDCHARS/\/}
    zle backward-kill-word
    zle -f kill
}
zle -N backward-kill-dir
bindkey '^[^?' backward-kill-dir

fetch

# Enable ohmyposh / starship
#eval "$(starship init zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/roenoev2.toml)"
#eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/user.toml)"
#eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/prod.toml)"
