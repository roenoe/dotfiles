# This is a readme file

# This file is outdated!!!

## Dependencies
* git
* zsh
* [Oh My Posh](https://ohmyposh.dev/docs/installation/linux)

* tmux
* [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
* entr
* kitty
* fzf
* neovim
* JetBrains font

## Automatic installation
This includes everything from my dotfiles, including the optional stuff\
First install all the Dependencies

### For Arch
`sudo pacman -S --needed git zsh tmux kitty fzf neovim entr ttf-jetbrains-mono-nerd git curl`

### For Debian
`sudo apt install git zsh tmux kitty fzf neovim entr git curl`

### For all distros
Oh My Posh:\
`mkdir -p .local/bin`\
`curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin`\
Tmux Plugin Manager:\
`git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm`

### Actually importing my dotfiles
Now you can install and apply my dotfiles, which you can do with this one command:\
`sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin init --apply roenoe`

### Changing shell to zsh
`chsh -s $(which zsh)`

## Extra steps for various different options
These are some extra steps for installing different optional parts of my dotfiles

### Correct nerd font in gnome-terminal
First install the correct font\
`oh-my-posh font install JetBrainsMono`\
Then you need to change the font in gnome-terminal to the correct font (menu > preferences > profiles > \[your profile (usually unnamed)\] > custom font > JetBrainsMonoNL Nerd Font)\
For some reason gnome-terminal has very weird font spacing if you change your font without rebooting. To fix this, simply reboot

### Tmux
For tmux to work, you need to download the plugins with `<leader> I`.\
So simply open a tmux session with `tmux` and then press `ctrl+b I`

### Kitty
I recommend changing the font kitty uses to JetBrains or Fira Code. To do so, simply edit `~/.config/kitty/kitty.conf` and uncomment the font you want to use. Make sure to also comment the font it uses by default (if that's not your preferred font)

## FAQ
### Zsh complains about "unknown option: --zsh"
This means you don't have a new enough version of fzf. To fix this error, simply comment the line that says `eval "$(fzf --zsh)"` in your `~/.zshrc` file

### Neovim complains about "lazy.nvim requires Neovim >= 0.8.0"
This means your Neovim version is old.

### Ssh agent in hyprland
See [this](https://www.lorenzobettini.it/2023/09/hyprland-and-ssh-agent/)

