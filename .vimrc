set nocompatible

set t_Co=256
syntax enable
let g:solarized_termtrans=1
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

execute pathogen#infect()
filetype indent plugin on

set hidden
set wildmenu
set showcmd
set hlsearch

set ignorecase
set smartcase

set backspace=indent,eol,start
set visualbell
"set mouse=a
set notimeout ttimeout ttimeoutlen=200

syn on se title
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

set number
set noeb vb t_vb=