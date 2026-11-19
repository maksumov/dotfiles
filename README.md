# dotfiles

Personal config files managed with [GNU Stow](https://www.gnu.org/software/stow/).

Each top-level directory is a stow package. Its contents are symlinked into
`$HOME`, so configs are edited in their usual places and committed from
`~/dotfiles`.

## Packages

| Package | Manages |
|---|---|
| zsh | `~/.zshrc` |
| git | `~/.gitconfig`, `~/.config/git/ignore` |
| nvim | `~/.config/nvim` (LazyVim) |
| tmux | `~/.config/tmux/tmux.conf` |
| starship | `~/.config/starship/starship.toml` |
| lazygit | `~/.config/lazygit/config.yml` |
| btop | `~/.config/btop/btop.conf` |
| alacritty | `~/.config/alacritty/alacritty.toml` |

## Bootstrap (Arch Linux)

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

# dotfiles + symlinks
git clone git@github.com:maksumov/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow zsh git nvim tmux starship lazygit btop alacritty

# login shell
chsh -s /usr/bin/zsh
```

Node.js: `nvm install --lts && nvm alias default 'lts/*'`.
Neovim plugins install automatically on first start (lazy.nvim).

## Workflow

- Edit configs where they normally live — symlinks are transparent.
- Commit and push from `~/dotfiles`:

```sh
git -C ~/dotfiles status
git -C ~/dotfiles commit -am "pkg: what changed"
```

## Managing packages

```sh
stow <pkg>     # link package into $HOME
stow -D <pkg>  # remove symlinks
stow -R <pkg>  # relink after changing the package tree
```

Adding a new package: create `<pkg>/` mirroring the target path from `$HOME`
(e.g. `foo/.config/foo/foo.conf`), move the real files in, `rmdir` any emptied
parent directories, then `stow foo`.

## Safety rules

Never commit: `~/.config/gh/` (GitHub token in `hosts.yml`), `~/.ssh`,
`~/.netrc`, `~/.config/opencode/`, `fish_variables`, `dconf/`, `monitors.xml`,
cloned repos (nested `.git`, e.g. alacritty `themes/`), tpm `plugins/`.

Before committing a new package, scan it for secrets:

```sh
grep -riE 'token|secret|password|api.?key' <pkg>/
```
