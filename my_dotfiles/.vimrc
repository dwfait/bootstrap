set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'


"My vundle bundles:
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-rails'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/ctags.vim'
Bundle 'ddollar/nerdcommenter'
Bundle 'tpope/vim-surround'

"Snipmate dependencies and plugin:
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"

Bundle "garbas/vim-snipmate"

"remap leader key to comma
let mapleader = ","

"For lots of cool Vim things
set nocompatible
set encoding=utf-8

"set shell=/bin/zsh\ -ic

set t_Co=256

"For powerline
set laststatus=2

"reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

"Syntax highlighting
syntax enable
filetype on
filetype plugin on
filetype plugin indent on

"Tab settings - 2 spaces instead of a tab
set autoindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2

"Line numbers and visual stuff
set ruler
set cursorline
set visualbell
set number
set showcmd

"Cool searching stuff
set incsearch
set hlsearch

set ignorecase

" solarized options 
set background=dark
colorscheme solarized

set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd BufNewFile,BufRead Gemfile set filetype=ruby

"Better up/down on wrapped lines
nnoremap j gj
nnoremap k gk

nnoremap <Leader>a :!rake test
nnoremap <Leader>t :Rake


let g:ctrlp_map = '<Leader>o'
let g:ctrlp_md =  'CtrlP'

" ARROW KEYS ARE UNACCEPTABLE
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

"Put all swap files in one place
set directory^=$HOME/vim_swap// 
