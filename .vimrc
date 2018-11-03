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
set number
set cursorline
set list
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set ruler
set showmode
set title
set nostartofline
set laststatus=2
set backspace=indent,eol,start
set visualbell
set scrolloff=3
set nowrap

set spell spelllang=en_us
hi SpellBad cterm=underline ctermfg=red

" Go here: http://vimdoc.sourceforge.net/htmldoc/spell.html to find all the
" related commands

"set mouse=a
"set notimeout ttimeout ttimeoutlen=200

"syn on se title
"set tabstop=8
"set softtabstop=8
"set shiftwidth=8
"set noexpandtab

if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif

if has("autocmd")
	filetype on
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

"set noeb vb t_vb=
