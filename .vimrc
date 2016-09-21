set nocompatible

syntax on
filetype plugin on
filetype indent on

set t_Co=256
colorscheme desert

let mapleader = "\\"

set encoding=utf-8
set mouse=a
set number
set history=700
set autoread
set wildmenu
set wildignore=*.o,*~,*.pyc
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set showmatch
set hlsearch
set expandtab
set ruler
set laststatus=2

"set ffs=unix,dos
"set ff=unix

set swapfile
set directory=~/.vim/tmp/swap/
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

"set indentation for files"
augroup indent
    autocmd!
    au BufNewFile,BufRead *.js set tabstop=2 softtabstop=2 shiftwidth=2 et
    au BufNewFile,BufRead *.html set tabstop=2 softtabstop=2 shiftwidth=2 et
    au BuFNewFile,BufRead *.css set tabstop=2 softtabstop=2 shiftwidth=2 et
    au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 et
augroup END

call plug#begin()
Plug 'mileszs/ack.vim'
"nnore <C-J> :cn<CR>
"nnore <C-K> :cp<CR>
"nnore ,, :Ack <C-R><C-W><cr>
"Plug 'davidhalter/jedi-vim'
"let g:jedi#force_py_version = 3
"let g:jedi#use_tabs_not_buffers = 1
"let g:jedi#completions_enabled = 0
"let g:jedi#popup_on_dot = 0
"let g:jedi#popup_select_first = 0
"let g:jedi#show_call_signatures = 0
"let g:jedi#smart_auto_mappings = 0
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'tpope/vim-fugitive'
"Plug 'vim-airline/vim-airline'
"Plug 'Glench/Vim-Jinja2-Syntax'
"Plug 'osyo-manga/vim-brightest'
"Plug 'stefandtw/quickfix-reflector.vim'
call plug#end()

"Move vertically by visual line"
nnoremap j gj
nnoremap k gk

"Splits"
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Tabs"
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>

"Shortcut to navigate files"
nnoremap - :e %:h<cr>
nnoremap t- :tabe %:h<cr>

"Shortcut to toggle highlighting"
nnoremap <F12> :set hls!<cr>

"Remove trailing spaces
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"nnoremap ,t :tab sp<cr>
"nnoremap ,v :tabe ~/.vimrc<cr>
nnoremap ; :
inoremap jj <esc>
"set backup
"set backupdir=~/.vim/tmp/backup/
"if !isdirectory(expand(&backupdir))
"    call mkdir(expand(&backupdir), "p")
"endif
"set undofile
"set undodir=~/.vim/tmp/undo/
"if !isdirectory(expand(&undodir))
"    call mkdir(expand(&undodir), "p")
"endif

