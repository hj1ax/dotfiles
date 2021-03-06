# Path to your oh-my-zsh installation.
export ZSH="/home/jiaxing/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# oh-my-zsh plugins
plugins=(git)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# p10k config script
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
source ~/.aliases

# Editor
export EDITOR="vim"

export PATH="$PATH:$HOME/.local/bin"

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# QT5CT
export QT_QPA_PLATFORMTHEME="qt5ct"

