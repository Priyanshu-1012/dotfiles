#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Error: Message is missing. Usage: gpush <commit-message>"
    exit 1
fi
message="$*"
git pull
git add .
git commit -m "$message"
git push

