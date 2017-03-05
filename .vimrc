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
map <C-S-r> :NERDTreeFind<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
map <C-Left> :tabprevious<CR>
map <C-Right> :tabnext<CR>

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
Plug 'maksimr/vim-yate'
Plug 'fholgado/minibufexpl.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'marijnh/tern_for_vim'
Plug 'townk/vim-autoclose'

" Initialize plugin system
call plug#end()

let g:airline_theme='luna'
let g:javascript_plugin_jsdoc = 1
let g:NERDTreeWinSize=40

set t_Co=256
set background=dark
colorscheme solarized
set guifont=Monaco:h13

