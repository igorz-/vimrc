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

map <leader>t :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
map <C-S-r> :NERDTreeFind<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
map <C-Left> :tabprevious<CR>
map <C-Right> :tabnext<CR>
set pastetoggle=<F3>

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
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'maksimr/vim-yate'
"Plug 'fholgado/minibufexpl.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
"Plug 'marijnh/tern_for_vim'
Plug 'townk/vim-autoclose'
Plug 'nightsense/seabird'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'elmcast/elm-vim'
Plug 'editorconfig/editorconfig-vim'
"Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'jdkanani/vim-material-theme'
Plug 'heavenshell/vim-jsdoc'
Plug 'nlknguyen/papercolor-theme'
"Plug 'flowtype/vim-flow'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()

let g:airline_theme='luna'
let g:javascript_plugin_jsdoc = 1
let g:NERDTreeWinSize=40

set t_Co=256
set background=dark
colorscheme PaperColor
set guifont=Monaco:h13

" ELM Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:elm_syntastic_show_warnings = 1
" let g:syntastic_elm_checkers = ['elm_make']

"let g:ctrlp_regexp = 1
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_use_caching = 0
endif

set wildignore+=*/.git/*,*/tmp/*,*.swp

set noshowmatch

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

"let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#fnamemod = ':p:.'
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#enabled = 1

" ALE
let g:ale_linters = {
\  'javascript': ['flow', 'eslint'],
\}

highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
let g:ale_sign_error = 'X' " could use emoji
let g:ale_sign_warning = '?' " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>

