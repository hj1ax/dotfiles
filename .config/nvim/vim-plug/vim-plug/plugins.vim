if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
	autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

"# vim-plug plugins
call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'brach': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'liuchengxu/vim-which-key'
Plug 'arcticicestudio/nord-vim'
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()
