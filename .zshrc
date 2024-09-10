# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="kafeitu"

##eval "$(oh-my-posh init zsh --config /usr/local/bin/.oh-my-posh)"

##HISTFILE=~/.zsh_history
##HISTSIZE=10000
##SAVEHIST=10000
##setopt appendhistory


plugins=( 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

 source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux


# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
pokemon-colorscripts --no-title -s -r

# Compatibility with other machines
export TERM=xterm-256color

### From this line is for pywal-colors
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
#(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh


# Created by `pipx` on 2024-07-13 18:52:50
export PATH="$PATH:/home/roenoe/.local/bin"
