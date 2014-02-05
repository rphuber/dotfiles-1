set shell=/bin/bash

set nocompatible


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-git'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'jaromero/vim-monokai-refined'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/syntastic'
Bundle 'gmarik/github-search.vim'
Bundle 'Indent-Guides'
Bundle 'kien/ctrlp.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'nono/vim-handlebars'
Bundle 'darthdeus/vim-emblem'
Bundle 'godlygeek/tabular'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'derekwyatt/vim-scala'
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-abolish'
Bundle 'vim-scripts/dbext.vim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-dispatch'
Bundle 'vim-scripts/paredit.vim'
Bundle 'guns/vim-clojure-static'
Bundle 'guns/vim-clojure-highlight'
Bundle 'amdt/vim-niji'
Bundle 'tpope/vim-fireplace'

let mapleader = ","

" Map F1 to escape so it doesn't load help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Map arrow keys
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

set number
set ruler
syntax on

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_coffee_coffeelint_args = "--file ~/.coffee-lint.json"
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
map <Leader>e :Errors<CR>


" Whitespace stuff
set nowrap
set wm=0
set tw=0
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" rspec
let g:rspec_command = "Dispatch zeus rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Sudo to write
cmap w!! w !sudo tee % >/dev/null

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Use modeline overrides
set modeline
set modelines=10

" Highlight cursor line
set cursorline

" Default color scheme
set background=dark

highlight clear SignColumn

"Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Copy and Paste
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

let g:github_search_path_format = '~/proj/:project'

set vb t_vb=""

set nofoldenable " disable folding

" Tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" text-obj
runtime macros/matchit.vim

" powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set encoding=utf-8

" tab shortcuts
nmap tp :tabpre<CR>
nmap tn :tabnext<CR>

" paredit
"let g:paredit_electric_return=1
let g:paredit_leader='\'
let g:paredit_shortmaps=1
let g:smartjump=1

" auto reload file
set autoread
autocmd CursorHold * checktime
