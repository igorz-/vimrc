set number
syntax enable
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set showmatch

set background=dark
colorscheme solarized

map <F2> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()
