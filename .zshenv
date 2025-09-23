# Set xdg paths
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

# Set zdotdir for zsh config
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Set editor
export EDITOR=nvim

# Set path
export PATH=$PATH:$HOME/.local/bin/

# Set term for ssh not to complain
export TERM=xterm-256color

# Set hostname and machinahostname
if [[ -f "/etc/machinahostname" ]]
then
  export MACHINAHOSTNAME=$(echo "[$(cat /etc/machinahostname | rev | cut -f3- -d"." | rev)]")
else
  export MACHINAHOSTNAME=$(hostname -s)
fi

export HOSTNAME=$(uname -n)
