#!/bin/bash
cd ~
git clone "https://github.com/Priyanshu-1012/better-ls"
mv better-ls/btrls.sh ~/btrls.sh
rm -rf better-ls
#change permission
chmod +x btrls.sh #add perm
##add alias ###testing1
###testing2
lines_to_add='
bl(){
    bash ~/btrls.sh "$@"
}'
#text to alias file
echo "$lines_to_add" >> ~/.bash_aliases


