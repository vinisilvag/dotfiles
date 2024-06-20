# Dotfiles

This repository keeps all dotfiles (configuration files in general) that I use in my daily basis workflow (e.g., Neovim, tmux, and others). 

## Requirements

To reproduce you should have installed in your machine:

> I'm not sure about specific packages that need to be installed for Neovim, tmux, etc; work. So, for now, you (me in the future) will need to figure it out to make things work.

### Git

```
$ sudo apt install git
```

### Stow

```
$ sudo apt install stow
```

## Installation

Firstly, clone the repo in your $HOME directory using git

```
$ git clone git@github.com/vinisilvag/dotfiles.git
$ cd dotfiles
```

and then use GNU stow for create all the symlinks for the configuration files.
The default usage is `stow package_name`. An example is:

```
$ stow nvim
$ stow tmux
$ stow zsh
```
