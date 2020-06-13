" Vundle Config
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'gregsexton/MatchTag'
call vundle#end()

filetype plugin indent on
" End of Vundle Config

runtime macros/matchit.vim

syntax on

set autoindent
set background=dark
set backspace=2
set belloff=all
set expandtab
set fileformats=unix
set hlsearch
set incsearch
set nomodeline
set shiftwidth=4
set tabstop=4

set updatetime=250
highlight GitGutterAdd    ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1

set colorcolumn=81
highlight ColorColumn ctermbg=8

set directory=~/.vim/swapfiles//
