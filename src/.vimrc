" Plugin Config
    " Vundle Config
    set nocompatible
    filetype off

    set rtp+=~/.vim/bundle/Vundle.vim

    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'APZelos/blamer.nvim'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'gregsexton/MatchTag'
    Plugin 'sheerun/vim-polyglot'
    Plugin 'vim-syntastic/syntastic'
    call vundle#end()

    filetype plugin indent on
    " End of Vundle Config

    highlight Blamer          ctermfg=lightgray
    highlight GitGutterAdd    ctermfg=2
    highlight GitGutterChange ctermfg=3
    highlight GitGutterDelete ctermfg=1

    runtime macros/matchit.vim

    let g:blamer_date_format='%Y-%m-%dT%H:%M:%S%Z'
    let g:blamer_delay=300
    let g:blamer_enabled=1
    let g:blamer_show_in_insert_modes=0
    let g:blamer_show_in_visual_modes=0
    let g:blamer_template='<committer-mail> <committer-time> <summary>'
    let g:syntastic_python_flake8_args="--ignore=E501"
" End of Plugin Config

syntax on

highlight ColorColumn ctermbg=8

set autoindent
set background=dark
set backspace=2
set belloff=all
set colorcolumn=81,101
set directory=~/.vim/swapfiles//
set expandtab
set fileformats=unix
set hlsearch
set incsearch
set nomodeline
set redrawtime=10000
set shiftwidth=4
set synmaxcol=0
set tabstop=4
set updatetime=250

augroup vimrc
    autocmd!
    autocmd BufNew,BufRead * :syntax sync fromstart
augroup end
