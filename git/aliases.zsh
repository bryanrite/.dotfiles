# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

# alias gc='git commit'
# alias gca='git commit -a'
# alias gco='git checkout'
# alias gcb='git copy-branch-name'
# alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
# alias gac='git add -A && git commit -m'

# # Sync upstream with origin remote
# gg = "!f() { old=$(git current-branch) && git checkout master && git pull upstream master && git push origin master && git checkout $old; }; f"

# # Grab latest from upstream, sync with origin, and rebase changes from current branch on top
# # Use this if you haven't pushed to your remote yet
# ggr = "!f() { old=$(git current-branch) && git checkout master && git pull upstream master && git push origin master && git checkout $old && git rebase master; }; f"

# # Grab latest from upstream, sync with origin, and merge changes from current branch
# # Use this if you have already pushed changes to the remote
# ggm = "!f() { old=$(git current-branch) && git checkout master && git pull upstream master && git push origin master && git checkout $old && git merge origin/master; }; f"

# # Show the diff between the latest commit and the current state
# d = !"git diff-index --quiet HEAD -- || clear; git --no-pager diff --patch-with-stat"
