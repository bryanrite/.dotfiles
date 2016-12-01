# Uses docker's autocompletion for inner commands. Assumes an install of
# `docker-complete` script at $completion below (this is where Homebrew
# tosses it, at least).
completion='$(brew --prefix)/share/zsh/site-functions/_docker'

if test -f $completion
then
  source $completion
fi
