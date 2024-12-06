# This is a readme file

## Dependencies
* git
* zsh
* [Oh My Posh](https://ohmyposh.dev/docs/installation/linux)

* tmux
* [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
* kitty
* fzf
* neovim

## Automatic installation
This includes everything from my dotfiles, including the optional stuff\
First install all the Dependencies

### For Arch
`sudo pacman -S git zsh tmux kitty fzf neovim`

### For Debian
`sudo apt install git zsh tmux kitty fzf neovim`

### For all distros
(Provided you have curl and git installed)\
Oh My Posh:\
`curl -s https://ohmyposh.dev/install.sh | bash -s`\
Tmux Plugin Manager:\
`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

### Actually importing my dotfiles
Now you can install and apply my dotfiles, which you can do with this one command:\
`sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply roenoe`

