```
sudo apt update
sudo apt upgrade
sudo apt autoremove
```

```
sudo apt install -y git\
                    vim-gtk\
                    build-essential\
                    ranger\
                    meld\
                    htop\
                    tree\
                    gedit\
                    curl\
                    iverilog\
                    gtkwave\
                    yosys

```

icons in ranger https://github.com/alexanderjeurissen/ranger_devicons
neovim appimg : https://github.com/neovim/neovim/wiki/Installing-Neovim#linux
nvchad :  git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim



## SSH SETUP

```
ssh-keygen -t ed25519 -C youremail@email.com
```

Then.. it’ll ask you where you want to save your key… press Enter to save it to the default location.
Then it’ll ask for a passphrase(optional)...press Enter to skip.

Now the key is generated.
Start the ssh agent, type..

```
ssh eval “$(ssh-agent -s)”
```

If the above command did not work for you..check out the github’s guide or you can try this one... 
```
eval $(ssh-agent -s)
```
Now add the private key to ssh agent…follow the below commands.
Create the file
```
touch ~/.ssh/config
```

Now go ahead and edit this file with the text editor of your choice.(here its vim)

```
vim ~/.ssh/config
```

Add the following lines to the file.(press ‘i’ on keyboard for insert mode and then type)


```
Host *
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519
  ```

Go ahead and save this file.(for vim -> press Esc to quit insert mode and type :wq command)
Now run it…

```
ssh-add ~/.ssh/id_ed25519
```


Now open your browser and go to your Github profile -> go to setting -> on left side click on SSH and GPG keys -> click on New SSH key

Add Title as you like…say VMUbuntu20.04 and for the key… go back to the terminal and open the key file…we assume you saved it at the default location..type..

 ```
 cat ~/.ssh/id_ed25519.pub
```

Go ahead and copy the contents of the file …may look something like this 
Go back to browser(github SSH key setup page)…Paste the contents under the ‘key’
Click on add SSH key.

Go back to terminal

```
ssh -T git@github.com
```

If you got a message like.. You've successfully authenticated, but GitHub does not provide shell access.
It worked! All ok.
<br>

## ZSH SETUP

```
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### syntx highlight + autosuggest

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
then add them to plugin in .zshrc

```
plugins=( 
    # other plugins...
    zsh-autosuggestions
)
```
