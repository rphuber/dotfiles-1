set shell=/bin/bash

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shuogo/neobundle.vim'

NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'jaromero/vim-monokai-refined'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'darthdeus/vim-emblem'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'dag/vim-fish'
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'elzr/vim-json'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'Raimondi/delimitMate'

call neobundle#end()

NeoBundleCheck

let mapleader = ","

" disable arrow keys
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
let g:syntastic_mode_map=
      \{ "mode": "active",
      \  "active_filetypes": [],
      \  "passive_filetypes": ["html"] }

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
set list

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Highlight cursor line
set cursorline

" Default color scheme
set background=dark

" Gitgutter
highlight clear SignColumn

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Disable beeping
set vb t_vb=""

" disable folding
set nofoldenable

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set ttimeoutlen=50

" auto reload file
set autoread
set autowriteall
autocmd CursorHold * checktime

" ctrlp
set wildignore+=*/node_modules/*

" html
let g:html_indent_inctags = "html,body,head,li"

" tabs
nnoremap <C-t>p :tabprevious<CR>
nnoremap <C-t>n :tabnext<CR>

" tagbar
nmap <Leader>t :TagbarToggle<CR>

" Golang
let g:syntastic_go_checkers = ['gotype', 'govet', 'golint']
au FileType go nmap <C-i> <Plug>(go-info)
au FileType go nmap <C-g> <Plug>(go-def)

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
