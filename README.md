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

### Firefox profiles
The sway keybinds `$mod+n` and `$mod+m` launch Firefox with the `personal` and `machina` profiles (set as `$personal` and `$work` in `variables.conf`). They pass the profile *name* via `firefox -P`, so the config itself is portable, but each machine needs those two names registered once.

This is needed because Firefox 134+ keeps profiles in a SQLite store under `~/.mozilla/firefox/Profile Groups/`, which is what the profile manager UI reads. The `-P` flag only reads `~/.mozilla/firefox/profiles.ini`, so a profile created through the UI is invisible to it and the keybind silently does nothing.

**Quit Firefox completely first** — a running instance can rewrite `profiles.ini` on shutdown and revert your changes. Then back it up:
```sh
cp ~/.mozilla/firefox/profiles.ini{,.bak}
```

To register `machina`, if it does not exist on this machine yet:
```sh
firefox -CreateProfile machina
```

If it already exists (you made it in the profile manager and want to keep its data), open `about:profiles`, copy its **Root Directory**, then:
```sh
firefox -CreateProfile "machina $HOME/.mozilla/firefox/<its-dir>"
```

Keep the quotes, and use `$HOME` rather than `~` — a tilde does not expand inside quotes and Firefox rejects it with `Error: profile path not valid.` The quotes are needed because UI-created profile directories are often named `<prefix>.Profile 1`, with a space. This only registers the existing directory, it does not touch what is inside it.

The personal profile is usually already in `profiles.ini` under Firefox's default name, so it just needs renaming. Check it first, and adjust the pattern below if it is not `default-release`:
```sh
grep '^Name=' ~/.mozilla/firefox/profiles.ini
sed -i 's/^Name=default-release$/Name=personal/' ~/.mozilla/firefox/profiles.ini
```

Verify both resolve. Exit code 0 with no profile manager popup means it worked:
```sh
firefox -P machina && firefox -P personal
```

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
