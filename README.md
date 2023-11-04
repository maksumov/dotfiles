# dotfiles

## dotfiles

- [Dotfiles: Best way to store in a bare git repository](https://www.atlassian.com/git/tutorials/dotfiles)
- [The best way to store your dotfiles: A bare Git repository **EXPLAINED**](https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/)

## Git

Plan:

1. add (global) git config
2. [add git ssh key and publish it on github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

## neovim

Plan:

1. add [rust](https://www.rust-lang.org/tools/install) as prerequisite for [bob-nvim](https://github.com/MordechaiHadad/bob)
2. install bob-nvim (Neovim version manager)
3. update `$PATH` for `nvim` binary installed via `bob` (by default `~/.local/share/bob/nvim-bin/`)
4. install latest [neovim](https://neovim.io/):

```sh
bob install latest
bob use latest
```

## install NvChad

NvChad is Blazing fast Neovim config providing solid defaults and a beautiful UI (quote from [official NvChad site](https://nvchad.com/))

Prerequisites:

1. Install `neovim 0.9` (Done)
2. Install [Nerd Font](https://www.nerdfonts.com/) (Done for [Terminal](https://github.com/microsoft/terminal) used by me by default for WSL sessions)
3. Install Ripgrep for grep search in [Telescope](https://github.com/nvim-telescope/telescope.nvim) (`sudo apt install ripgrep`)

Installation:

```sh
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

Source for install instructions: https://nvchad.com/docs/quickstart/install

## Docker

1. Install `docker` by following [the instructions](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04)
2. Install `docker compose` by following [the instructions](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-22-04)

## nvm (node version manager)

nvm repository: https://github.com/nvm-sh/nvm

Plan:

1. Install nvm by running the command:

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
```

## node.js

Install node.js & nvm:

```sh
nvm install --lts
nvm use --lts
nvm alias default 20 # current lts version
```

## Angular CLI

Install @angular/cli package globally:

```sh
npm install -g @angular/cli
```
