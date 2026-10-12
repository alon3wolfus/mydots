# mydots

My Linux dotfiles: a [Hyprland](https://hyprland.org/) desktop running the [Caelestia](https://github.com/caelestia-dots/shell) shell, plus the terminal tools and app themes I use every day.

<!-- Add a screenshot here: ![screenshot](screenshot.png) -->

## What's inside

Each folder matches a directory in `~/.config/`.

| Folder | What it configures |
| --- | --- |
| `hypr` | Hyprland window manager |
| `caelestia` | Caelestia shell (bar, launcher, notifications) |
| `kitty`, `foot` | Terminal emulators |
| `fish` | Fish shell |
| `btop`, `htop` | System monitors |
| `fastfetch`, `fetch` | System info fetchers |
| `cava` | Audio visualizer (including custom shaders) |
| `rmpc` | MPD music client |
| `lazygit` | Git terminal UI |
| `spicetify` | Spotify theming |
| `swappy` | Screenshot annotation |
| `Thunar` | File manager |
| `BetterDiscord` | Discord themes only |
| `VSCodium` | Editor settings, keybindings and snippets only |

## What's not included

Some apps store login tokens and session data in their config folders, so they are left out on purpose: Todoist, Equibop/Equicord, OnlyOffice, and the internals of VSCodium and BetterDiscord (plugins, caches, history). Never commit those to a public repo.

## Install

Clone the repo, then symlink the folders you want into `~/.config`:

```bash
git clone https://github.com/alon3wolfus/mydots.git ~/mydots
cd ~/mydots

for dir in hypr caelestia kitty foot fish btop htop fastfetch fetch cava rmpc lazygit spicetify swappy Thunar; do
  [ -e ~/.config/"$dir" ] && mv ~/.config/"$dir" ~/.config/"$dir".bak   # back up what's there
  ln -s ~/mydots/"$dir" ~/.config/"$dir"
done
```

Remove folders from the list if you only want some of them. Existing configs are renamed to `<name>.bak` rather than overwritten.

For VSCodium, copy the files rather than linking the whole folder:

```bash
cp ~/mydots/VSCodium/User/{settings.json,keybindings.json} ~/.config/VSCodium/User/
cp -r ~/mydots/VSCodium/User/snippets ~/.config/VSCodium/User/
```

## Dependencies

Install the programs for the configs you use (Hyprland, the Caelestia shell, kitty, fish, and so on). Package names vary by distro, so check your package manager.

## Credits

- [Caelestia](https://github.com/caelestia-dots/shell) for the shell.
- The `cava/shaders/orion_*` files are by their original author and keep their license headers.

## Notes

These are personal configs. They work on my machine and may need tweaking on yours, so read before you copy.
