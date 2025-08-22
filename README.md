# This is a readme file


## Installation of dependencies

### For Arch linux (and derivatives)
These packages are always needed, no matter what you plan on installing:\
`sudo pacman -S --needed git wget curl stow`

#### Prompt & shell
`sudo pacman -S --needed zsh fzf eza unzip`

Oh My Posh:\
`mkdir -p ~/.local/bin`\
`curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin`

Change default shell to zsh:\
`chsh -s $(which zsh)`

#### Other CLI tools
`sudo pacman -S tmux entr neovim fastfetch`

Tmux Plugin Manager:\
`git clone https://github.com/tmux-plugins/tpm ~/.local/share/tmux/plugins/tpm`

#### All the terminals
`sudo pacman -S --needed alacritty ghostty kitty ttf-jetbrains-mono-nerd`

Maple-mono font\
`yay -S --needed ttf-maple`

#### Hyprland
`sudo pacman -S --needed hyprland hypridle hyprlock hyprpaper fuzzel waybar nm-connection-editor network-manager-applet`\
`yay -S --needed hyprshot`

#### Sway
`sudo pacman -S --needed sway swaybg swayidle swaylock grim slurp waybar nm-connection-editor network-manager-applet fuzzel autotiling`

### For Debian (some stuff might not exist in bookworm/12)
These packages are always needed, no matter what you plan on installing:\
`sudo apt install sudo wget git curl stow`

#### Prompt & shell
`sudo apt install zsh fzf eza unzip`

#### Other CLI tools
`sudo apt install tmux entr neovim fastfetch`

Tmux Plugin Manager:\
`git clone https://github.com/tmux-plugins/tpm ~/.local/share/tmux/plugins/tpm`

Oh My Posh:\
`mkdir -p ~/.local/bin`\
`curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin`

Change default shell to zsh:\
`chsh -s $(which zsh)`

#### All the terminals
`sudo apt install kitty alacritty fonts-jetbrains-mono`

Ghostty:\
`source /etc/os-release
ARCH=$(dpkg --print-architecture)
GHOSTTY_DEB_URL=$(
   curl -s https://api.github.com/repos/mkasberg/ghostty-ubuntu/releases/latest | \
   grep -oP "https://github.com/mkasberg/ghostty-ubuntu/releases/download/[^\s/]+/ghostty_[^\s/_]+_${ARCH}_${VERSION_ID}.deb"
)
GHOSTTY_DEB_FILE=$(basename "$GHOSTTY_DEB_URL")
curl -LO "$GHOSTTY_DEB_URL"
sudo dpkg -i "$GHOSTTY_DEB_FILE"
rm "$GHOSTTY_DEB_FILE"`

#### Sway
`sudo apt install sway swaybg swayidle swaylock grim slurp waybar nm-connection-editor network-manager-applet fuzzel autotiling sway-notification-center libnotify-bin`

#### Hyprland
Not really reccommended. If you really want to install it anyway, the dependencies you will need are `hyprland hypridle hyprlock hyprpaper hyprshot waybar nm-connection-editor network-manager-applet fuzzel`. Some of these are not in the repos.

## Extra steps for stuff
These are some extra steps for installing different optional parts of my dotfiles

### WM and waybar and stuff
Make sure to configure your monitors by copying `example-monitors` into `monitors.conf` in your `~/.config/hypr/config.d/` or `~/.config/sway/config.d/` respectively, and then editing it.\
If you're using sway, make sure to edit `~/.config/waybar/config.jsonc` and change the monitor name of your primary monitor on the lines where it mentions a monitor in `persistent-workspaces`

If you're planning on screenshotting stuff, whether that be with hyprshot (Hyprland) or with grim+slurp (sway), you need to make a screenshot folder. Do that with `mkdir -p ~/Pictures/screenshots`\
If you want some other wallpaper than a black screen, you can put whatever images you want in your wallpaper folder. To make one, do `mkdir -p ~/Pictures/wallpaper/`\
I have som wallpapers available [this google drive folder](https://drive.google.com/drive/folders/15ALGCKmm9kK1I67v8c1eSb1FbDeX9vVZ?usp=sharing)

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

### Discord won't launch
FIX: Disable hardware acceleration in settings -> advanced.
This is a bug in discord/electron in wayland.

### Zsh complains about "unknown option: --zsh"
This means you don't have a new enough version of fzf. To fix this error, simply comment the line that says `eval "$(fzf --zsh)"` in your `~/.zshrc` file.

### Neovim complains about "lazy.nvim requires Neovim >= 0.8.0"
This means your Neovim version is old.

### Ssh agent in hyprland
See [this](https://www.lorenzobettini.it/2023/09/hyprland-and-ssh-agent/)

### Broken xdg-desktop-portal
See [this](https://www.reddit.com/r/openSUSE/comments/16v0vk7/comment/k30mxyr/)

## List of dependencies
* Stow
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
* wlr-dpms
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
### Other tools
* fastfetch
* tmux
* entr
* [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
* neovim
