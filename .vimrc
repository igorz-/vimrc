set number
syntax enable
set ts=4
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set cursorline
set showmatch
set colorcolumn=120

map <F2> :NERDTreeTabsToggle<CR>
nmap <F8> :TagbarToggle<CR>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
Plug 'jistr/vim-nerdtree-tabs'

" Initialize plugin system
call plug#end()

let g:airline_theme='luna'

set background=dark
colorscheme solarized
