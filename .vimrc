set nocompatible

inoremap jj <ESC>

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set t_Co=256
syntax enable
let g:solarized_termtrans=1
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

execute pathogen#infect()

" CtrlP Settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll|o|swp)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_user_command = ['.hg', 'hg --cwd %s locate -I .']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Basic Settings
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
set smartindent
set autoindent

" Set tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

set spell spelllang=en_us
hi SpellBad cterm=underline ctermfg=red

" Go here: http://vimdoc.sourceforge.net/htmldoc/spell.html to find all the
" related commands

"set mouse=a
"set notimeout ttimeout ttimeoutlen=200

syn on se title

if exists("&relativenumber")
    set relativenumber
    au BufReadPost * set relativenumber
endif

if has("autocmd")
    filetype on
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
    autocmd BufNewFile,BufRead *.md setlocal filetype=markdown textwidth=75
    autocmd BufNewFile,BufRead *.c,*.h,*.cpp,*.hpp setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab textwidth=75
endif

"set noeb vb t_vb=
