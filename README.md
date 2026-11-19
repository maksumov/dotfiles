# dotfiles

Personal config files managed with [GNU Stow](https://www.gnu.org/software/stow/).
Each top-level directory is a stow package; its contents are symlinked into
`$HOME`, so configs are edited in their usual places and committed from
`~/dotfiles`.

## Prerequisites

```sh
# packages
sudo pacman -S stow git zsh zsh-autosuggestions zsh-syntax-highlighting \
  nvm fzf fd zoxide starship tmux neovim lazygit btop alacritty

# oh-my-zsh
git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

# fzf-git.sh
git clone --depth=1 https://github.com/junegunn/fzf-git.sh.git ~/tools-repos/fzf-git.sh

# tpm (tmux plugin manager); then inside tmux: prefix + I
git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# optional: alacritty themes
git clone --depth=1 https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
```

Node.js: `nvm install --lts && nvm alias default 'lts/*'`.
Neovim plugins install automatically on first start (lazy.nvim).

## Managing packages

```sh
stow <pkg>     # link package into $HOME
stow -D <pkg>  # remove symlinks
stow -R <pkg>  # relink after changing the package tree
```

Adding a new package: create `<pkg>/` mirroring the target path from `$HOME`
(e.g. `foo/.config/foo/foo.conf`), move the real files in, `rmdir` any emptied
parent directories, then `stow foo`.
