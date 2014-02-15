set shell=/bin/bash

set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'jaromero/vim-monokai-refined'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/unite.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'nono/vim-handlebars'
Bundle 'darthdeus/vim-emblem'
Bundle 'derekwyatt/vim-scala'
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-surround'
Bundle 'dag/vim-fish'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-endwise'
Bundle 'elzr/vim-json'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'majutsushi/tagbar'
Bundle 'mhinz/vim-startify'
Bundle 'tsukkee/unite-tag'
Bundle 'Shougo/vimproc'
Bundle 'Blackrush/vim-gocode'

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

" tab shortcuts
nmap tp :tabpre<CR>
nmap tn :tabnext<CR>
nmap bp :bp<CR>
nmap bn :bn<CR>

nnoremap <silent> <Leader>n :TagbarToggle<CR>

" Go
let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'f:function',
        \'v:var',
        \'t:type'
    \]
    \}

" Unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#set_profile('files', 'smartcase', 1)
let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_enable_short_source_names=1
let g:unite_prompt = '❫ '
nnoremap <silent> <C-p> :<C-u>Unite -toggle -no-split file_rec/async buffer file_mru<cr><c-u>
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  imap <buffer> jj      <Plug>(unite_exit)
  imap <silent><buffer><expr> <C-s> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
endfunction


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
autocmd CursorHold * checktime
