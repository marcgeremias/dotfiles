# dotfiles

## Requirements

To use the dotfiles you should have the following dependencies installed:

### Git

```
brew install git
```

### Stow

```
brew install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
git clone git@github.com/marcgeremias/dotfiles.git
cd dotfiles
```

Then use GNU stow to create the symlinks

```
stow .
```