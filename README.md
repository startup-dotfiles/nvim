# Dotvault --- Neovim text editor

```sh
# Backup/Rename
## Required
[ -d $HOME/.config/nvim ] &&  mv $HOME/.config/nvim{,.bak}

## Optional but recommended
[ -d $HOME/.local/share/nvim ] &&  mv $HOME/.local/share/nvim{,.bak}
[ -d $HOME/.local/state/nvim ] &&  mv $HOME/.local/state/nvim{,.bak}
[ -d $HOME/.cache/nvim ] &&  mv $HOME/.cache/nvim{,.bak}
```

```sh
# Clone
git clone https://github.com/dotvault/nvim.git $HOME/.config/nvim

# These files can be deleted after installation.
rm -r README.md LICENSE .git/ .gitignore
```
