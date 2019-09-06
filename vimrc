set nocompatible              " required
filetype off                  " required
" iTerm2 supports 256 color mode.
set t_Co=256
" highlight search terms
set hlsearch

"stop highlight when searching for pattern
map <silent> <C-N> :let @/=""<CR>

" show search matches as you type
set incsearch


" show the cursor position
set ruler

"Open new file on right panel when runnning :vsplit filename
set splitright

set encoding=utf-8


" LIne numbering
set nu

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set background=dark
syntax on
color zenburn

" Add line at 80 characters
set colorcolumn=80


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"NERDTree toggle
map <C-T> :NERDTreeToggle<CR>

"Open NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

set laststatus=2

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'davidhalter/jedi-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jnurmine/Zenburn'
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required


"Airline (powerline) setting
set laststatus=2
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1

"YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_lsknum_of_chars_for_completion = 1


"Python file and indent settings
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Execute python script with Ctrl-b key combination
map <C-b> :w<CR>:!python %<CR>
