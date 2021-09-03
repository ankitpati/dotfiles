set nocompatible

" Plugin Config
    call plug#begin()
        Plug 'APZelos/blamer.nvim'
        Plug 'airblade/vim-gitgutter'
        Plug 'godlygeek/tabular'
        Plug 'gregsexton/MatchTag'
        Plug 'sheerun/vim-polyglot'
        Plug 'vim-syntastic/syntastic'
    call plug#end()

    highlight Blamer          ctermfg=lightgray
    highlight GitGutterAdd    ctermfg=darkgreen
    highlight GitGutterChange ctermfg=darkyellow
    highlight GitGutterDelete ctermfg=darkred

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
filetype plugin indent on

highlight ColorColumn ctermbg=darkgray
highlight StatusLine ctermbg=darkgray ctermfg=black
highlight StatusLineNC ctermbg=darkgray ctermfg=black
highlight VertSplit ctermbg=darkgray ctermfg=black

set autoindent
set background=dark
set backspace=2
set belloff=all
set colorcolumn=81,101
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
