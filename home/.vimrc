if has('vim_starting')
  set nocompatible
  set shell=/bin/bash

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/vimproc', {
      \  'build' : {
      \    'mac' : 'make -f make_mac.mak',
      \    'unix' : 'make -f make_unix.mak',
      \  },
      \}

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
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-surround'
NeoBundle 'dag/vim-fish'
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'elzr/vim-json'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'gkz/vim-ls'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'tpope/vim-dispatch'

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
let g:syntastic_coffee_coffeelint_args = "--file ~/.coffee-lint.json"
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
" Show trailing whitespace
set list listchars=tab:\ \ ,trail:.

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

" Sudo to write
cmap w!! w !sudo tee % >/dev/null

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

nnoremap <silent> <Leader>n :TagbarToggle<CR>

" Go
autocmd Filetype go setlocal noexpandtab
let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'f:function',
        \'v:var',
        \'t:type'
    \]
    \}

" Startify
let g:startify_custom_header = [
      \ '   __      ___            ______ ____   ',
      \ '   \ \    / (_)           |____  |___ \ ',
      \ '    \ \  / / _ _ __ ___       / /  __) |',
      \ '     \ \/ / | | ''_ ` _ \     / /  |__ <',
      \ '      \  /  | | | | | | |   / /   ___) |',
      \ '       \/   |_|_| |_| |_|  /_(_) |____/ ',
      \ '',
      \ '',
      \ ]

" auto reload file
set autoread
set autowriteall
autocmd CursorHold * checktime

" dispatch
map <Leader>t :Dispatch<CR>
autocmd FileType ruby let b:dispatch = 'rspec %'
