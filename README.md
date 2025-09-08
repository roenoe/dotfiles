# This is a readme file

## Extra steps for stuff
These are some extra steps for installing different optional parts of my dotfiles

### WM and waybar and stuff
Make sure to configure your monitors by copying `example-monitors` into `monitors.conf` in your `~/.config/hypr/config.d/` or `~/.config/sway/config.d/` respectively, and then editing it.\
If you're using sway, make sure to edit `~/.config/waybar/config.jsonc` and change the monitor name of your primary monitor on the lines where it mentions a monitor in `persistent-workspaces`

If you want some other wallpaper than a black screen, you can put whatever images you want in your wallpaper folder. To make one, do `mkdir -p ~/Pictures/wallpaper/`\
I have som wallpapers available [this google drive folder](https://drive.google.com/drive/folders/15ALGCKmm9kK1I67v8c1eSb1FbDeX9vVZ?usp=sharing)

### Tmux
For tmux to work, you need to download the plugins with `<leader> I`.\
So simply open a tmux session with `tmux` and then press `ctrl+b I`

### Shell
Change default shell to zsh:\
`chsh -s $(which zsh)`

## List of dependencies
* yadm
### Different terminal options
* Alacritty
* ghostty
* kitty
### Window Managers
* fuzzel // wofi
* waybar
* nm-connection-editor
* network-manager-applet
#### Hyprland
* hyprland
* hypridle
* hyprlock
* hyprpaper
* hyprshot
#### Sway
* sway // swayfx
* swaybg
* sway*\idle+lock // hypr*idle+lock
* SCREENSHOT UTIL
* autotiling
### Prompt & shell
* [Oh My Posh](https://ohmyposh.dev/docs/installation/linux)
* zsh
* fzf
* unzip
* eza (or exa)
* starship
* fish
* zoxide
### Other tools
* fastfetch
* tmux
* entr
* [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
* neovim
