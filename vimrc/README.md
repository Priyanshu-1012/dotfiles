## to use it directly

1. Backup your existing .vimrc file and copy command to terminal
```
curl -o ~/.vimrc https://raw.githubusercontent.com/Priyanshu-1012/my-dotfiles/master/vimrc/.vimrc
```

2. install Plug plugin manager for vim
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
```:PlugInstall``` to install all plugins

## (:H)elp

_put help.txt in ~/.vim folder to enable help menu(:H)_
<br>

#### SHORTCUTS
```
<L>th    sequence through all themes
<L>c<L>  toggle comment status
F7       new terminal
F8       toggle terminal
F9       previous terminal 
F12      kill terminal
C-n      nerdTree
C-u/C-c  Cut/copy
Tab      switch buffers    
```

#### COMMANDS
```
:Pi      PluginInstall
:Py      PythonTerminal
:Il      Toggle IndentLines
```
