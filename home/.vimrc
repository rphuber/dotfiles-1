" Pathogen
set shell=/bin/sh

set nocompatible


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'chriskempson/base16-vim'
Bundle 'tpope/vim-rails.git'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-bundler.git'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/syntastic'
Bundle 'gmarik/github-search.vim'
Bundle 'Indent-Guides'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'skwp/vim-ruby-conque'

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

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Fugitive configuration
map <Leader>g :Gstatus<CR>

" Extradite configuration
map <Leader>l :Extradite!<CR>

" Cmd-Shift-R for RSpec
nmap <silent> <D-R> :call RunRspecCurrentFileConque()<CR>
" Cmd-Shift-L for RSpec Current Line
nmap <silent> <D-L> :call RunRspecCurrentLineConque()<CR>
" ,Cmd-R for Last conque command
nmap <silent> ,<D-R> :call RunLastConqueCommand()<CR>

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
colorscheme base16-default

"Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Copy and Paste
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

let g:Powerline_symbols = 'unicode'

let g:github_search_path_format = '~/proj/:project'

set vb t_vb=""

set nofoldenable " disable folding
