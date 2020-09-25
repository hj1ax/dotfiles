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
cp $HOME/{.zshrc,.aliases} .

if [ ! -d "./.config" ]; then
    mkdir .config
fi

cp -r $HOME/.config/{nvim,i3,picom,polybar,awesome} ./.config

# Neovim
cp -r $HOME/.config/nvim/{init.vim,keybindings.vim,lua,vim-plug,coc-config.vim,coc-explorer-config.vim} ./config/nvim

gs="$(git status | grep -i "modified")"

# Check if dotfiles are modified
if [[ $gs == *"modified"* ]]; then
  echo "dotfiles are modified"
fi

# push to Github
git add -u;
git commit -m "New backup `date +'%Y-%m-%d %H:%M:%S'`";
git push origin master
