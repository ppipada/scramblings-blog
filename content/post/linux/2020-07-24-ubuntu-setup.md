---
title: Linux - Ubuntu initial dev setup
date: 2020-07-24 11:00:00 +0530
categories: [Software-Tools]
tags: [linux, ubuntu, commands]
summary: Initial dev setup for Ubuntu Linux.
---

I had to setup a fresh Ubuntu dev machine after quite some time. Given that this was a loaner machine, I wanted to make sure that I have a minimal viable dev setup ready as quickly as possible.

Below are the steps for the minimal things I need.

## Upgrade packages

For a fresh setup it is better to first make sure that everything that is upgradable is up to date. If you have a specific version requirement for any package make sure you pin it at the package manager level.

Basic commands

```bash
sudo apt update
sudo apt upgrade
sudo apt install software-properties-common apt-transport-https wget zsh git vim tree
sudo apt autoremove
```

## ZSH setup

- [ZSH](https://en.wikipedia.org/wiki/Z_shell) is an extended Bourne shell.
- Together with [Oh-My-ZSH](https://github.com/ohmyzsh/ohmyzsh) it provides a delight full dev experience.
- I personally like to use the `agnoster` theme from ohmyzsh with the plugins `git common-aliases zsh-syntax-highlighting zsh-autosuggestions`
- For Ubuntu terminal make sure you got to `Terminal -> Preferences -> <Your Profile> -> Colors` and uncheck the `Use system colors` option so that the theme colors are used in the terminal.

- Ohmyzsh standard plugins do not require explicit installation. Community plugins require some installation. Plugins links and installation guides are:
  - [common-aliases](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/common-aliases/common-aliases.plugin.zsh)
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

My simple `/.zshrc` file:

```shell
{{% code "post/linux/zshrc"%}}
```

## SSH key-gen and add to repositories

Interacting with multiple hosted git repositories is much smoother when using SSH keys.

Specific git hosts provide their guides to do this, e.g: [GitHub ssh key gen guide](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

General setup includes:

- Generate a ssh key pair on a machine.
- Add it to your git host profile settings.
- Test ssh access to git

```bash
ssh-keygen -t ed25519 -C "email@example.com"
ssh-keygen -t ed25519 -C "username@example.com"
xclip -sel clip < ~/.ssh/id_ed25519.pub

# Add your git host (GitLab/GitHub/BitBucket, etc) URL for git-example.com
ssh -T git@git-example.com
```

## Basic software install

- VSCode. General post for VSCode helpers is [here](./2020-04-28-vscode.md)
- [Slack](https://slack.com)
- [Zoom](https://zoom.us/)
- [Hugo](https://gohugo.io/getting-started/installing/). Hugo is fantastic website building framework. Awesome for static sites.

## Programming language settings

- Go. Basic introductory primer is present [here](../go/2019-11-17-go-intro-primer.md).
- Python. Getting started [link](https://www.python.org/about/gettingstarted/)

Pull your code and go exploring :)
