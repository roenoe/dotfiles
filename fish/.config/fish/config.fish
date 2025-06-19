set fish_greeting
if status is-interactive
    # Commands to run in interactive sessions can go here
end
#function fish_user_key_bindings
#    fish_default_key_bindings -M insert
#    fish_vi_key_bindings --no-erase insert
#end

# Environment variables
set -x PATH $PATH $HOME/.local/bin/  # Must come first because it alters $PATH
set -x TERM xterm-256color
set -x EDITOR nvim
set -x HOSTNAME (uname -n)

# Get MACHINAHOSTNAME from file or fallback
if test -f /etc/machinahostname
    set -x MACHINAHOSTNAME "["(cut -f1-3 -d. < /etc/machinahostname)"]"
else
    set -x MACHINAHOSTNAME (uname -n)
end

# Run oh-my-posh
eval "$(oh-my-posh init fish --config $HOME/.config/ohmyposh/minimal.toml)"

# Set up fzf key bindings
fzf --fish | FZF_ALT_C_COMMAND= FZF_CTRL_T_COMMAND= source

# Aliases
## Nvim
alias vi nvim
alias vim nvim
alias vimdiff "nvim -d"
## Eza
alias ls "exa --icons=always -ah --group-directories-first"
alias ll "ls -l --git"
alias lsa "ls -l --total-size"
## Other
alias .. "cd .."
alias fetch "fastfetch --config ~/.config/fastfetch/autostart.jsonc"
alias rg "rg -i --hidden"

fetch
