# This is a readme file

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

## Automatic installation
This includes everything from my dotfiles, including the optional stuff\
First install all the Dependencies

### For Arch
`sudo pacman -S git zsh tmux kitty fzf neovim entr`

### For Debian
`sudo apt install git zsh tmux kitty fzf neovim entr`

### For all distros
(Provided you have curl and git installed)\
Oh My Posh:\
`curl -s https://ohmyposh.dev/install.sh | bash -s`\
Tmux Plugin Manager:\
`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

### Actually importing my dotfiles
Now you can install and apply my dotfiles, which you can do with this one command:\
`sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply roenoe`

## FAQ
### Zsh complains about "unknown option: --zsh"
This means you don't have a new enough version of fzf. To fix this error, simply comment the line that says `eval "$(fzf --zsh)"` in your `~/.zshrc` file

### Neovim complains about "lazy.nvim requires Neovim >= 0.8.0""
This means your Neovim version is old.
