#!/bin/sh
# TMUX initiation script adapted from:
# https://www.huyng.com/posts/productivity-boost-with-tmux-iterm2-workspaces

export PATH=$PATH:/usr/local/bin

# abort if we're already inside a TMUX session
[ "$TMUX" == "" ] || exit 0

# present menu for user to choose which workspace to open
PS3="Please choose your session: "
options=($(tmux list-sessions -F "#S") "NEW SESSION" "ZSH")
echo "Available sessions"
echo "------------------"
select opt in "${options[@]}"
do
    case $opt in
        "NEW SESSION")
            read -p "Enter new session name: " SESSION_NAME
            tmux -2 new -s "$SESSION_NAME"
            break
            ;;
        "ZSH")
            zsh
            break;;
        *)
            tmux -2 attach-session -t $opt
            break
            ;;
    esac
done
