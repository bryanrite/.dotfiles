# dotfiles

Feel free to take anything you see. I use these dotfiles myself but I cannot guarantee they will work for you without issue.

Make sure you read everything before you install as these will change macOS preferences and other things that you may not like.

## Components

As the base structure is taken from Zack Holman's dotfiles, he can describe it best:

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](http://caskroom.io) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Install

1. Clone into `~/.dotfiles`

1. Run `~/.dotfiles/script/boostrap`

Periodically run `~/.dotfiles/script/update` to update brew, its packages, any macOS settings, etc.
