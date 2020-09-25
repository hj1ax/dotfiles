"- Look and feel
set number
set noshowmode
syntax on
set background=dark
set guifont=Jetbrains\ Mono:h12
let g:gruvbox_italic=1
colorscheme nord

"- Status bar
set laststatus=2

"- Basic setup
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set nocompatible
filetype plugin on
set mouse=a

"- Fix backspace indent
set backspace=indent,eol,start

"- Tabs
set tabstop=4
set shiftwidth=4
set expandtab

"- Map leader key
let mapleader=","

"- Enable hidden buffers
set hidden

"- Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"- Variables
let g:airline_powerline_fonts=1
let g:airline_theme='nord'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:coc_node_path='$HOME/.nvm/versions/node/v12.18.4/bin/node'

source ~/.config/nvim/coc-config.vim
source ~/.config/nvim/coc-explorer-config.vim
