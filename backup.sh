#!/bin/bash

# Check if git is avaible
IS_GIT_AVAILABLE="$(git --version)"
if [[ $IS_GIT_AVAILABLE == *"version"* ]]; then
    echo "Git is Available"
else
    echo "Git is not installed"
    exit 1
fi

# Copy dotfiles
cp $HOME/{.zshrc,.aliases,.Xresources} .

if [ ! -d "./.config" ]; then
    mkdir .config
fi

rsync -r -l $HOME/.config/{i3,bspwm,sxhkd,picom,polybar,qt5ct,alacritty,kitty} ./.config
rsync $HOME/.config/nvim/{init.vim,config.vim,coc-config.vim,keybindings.vim,plugins.vim} ./.config/nvim
rsync -r $HOME/.config/nvim/lua/* ./.config/nvim/lua
rsync -r $HOME/Pictures/Wallpapers/* Pictures/Wallpapers

git add -A

gs="$(git status | grep -i "modified")"

# Check if dotfiles are modified
if [[ $gs == *"modified"* ]]; then
    echo "dotfiles are modified"
fi 

# push to Github
git add -u;
git commit -m "New backup `date +'%Y-%m-%d %H:%M:%S'`";
git push origin master
