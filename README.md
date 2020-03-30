# Dotfiles

These are a simple set of dotfiles that strive to strike the right balance between usefulness and simplicity. They are designed to function on both macOS and Linux.

## Configured programs

* bash
* zsh
* git
* ssh
* tmux
* vim

## Requirements

Depending on your system, you may need to manually install or upgrade to the following packages:

* vim 8.0+
* openssh 7.3p1+
* bash 4.1+
* bash-completion (for bash 4.1+)
* zsh 5.7+

## Install

Run the following commands in your terminal. It should not do anything destructive. Check out the setup script to see exactly what it does.

```bash
wget -O - https://raw.githubusercontent.com/anaoum/dotfiles-bare/master/setup.sh | bash
```
