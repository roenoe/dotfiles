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
* JetBrains font

## Automatic installation
This includes everything from my dotfiles, including the optional stuff\
First install all the Dependencies

### For Arch
`sudo pacman -S git zsh tmux kitty fzf neovim entr ttf-jetbrains-mono-nerd`

### For Debian
`sudo apt install git zsh tmux kitty fzf neovim entr fonts-jetbrains-mono`

### For all distros
(Provided you have curl and git installed)\
Oh My Posh:\
`curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin\
Tmux Plugin Manager:\
`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

### Actually importing my dotfiles
Now you can install and apply my dotfiles, which you can do with this one command:\
`sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply roenoe`

### Extra steps for tmux
For tmux to work, you need to download the plugins with `<leader> I`.\
So simply open a tmux session with `tmux` and then press `ctrl+b I`

### Extra steps for Kitty
I recommend changing the font kitty uses to JetBrains or Fira Code. To do so, simply edit `~/.config/kitty/kitty.conf` and uncomment the font you want to use. Make sure to also comment the font it uses by default (if that's not your preferred font)

## FAQ
### Zsh complains about "unknown option: --zsh"
This means you don't have a new enough version of fzf. To fix this error, simply comment the line that says `eval "$(fzf --zsh)"` in your `~/.zshrc` file

### Neovim complains about "lazy.nvim requires Neovim >= 0.8.0""
This means your Neovim version is old.
