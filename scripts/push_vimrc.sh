#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please provide a commit message."
    exit 1
fi

msg="$1"

cp ~/.vimrc ~/GitHub/dotfiles/vimrc/
cd ~/GitHub/dotfiles/vimrc/
git pull
git add .
git commit -m "$msg"
git push

