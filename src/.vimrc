vim9script
set nocompatible

# Plugin Config
    call plug#begin()
        Plug 'APZelos/blamer.nvim'
        Plug 'airblade/vim-gitgutter'
        Plug 'dense-analysis/ale'
        Plug 'godlygeek/tabular'
        Plug 'gregsexton/MatchTag'
        Plug 'sheerun/vim-polyglot'
    call plug#end()

    highlight Blamer          ctermfg=lightgray
    highlight GitGutterAdd    ctermfg=darkgreen
    highlight GitGutterChange ctermfg=darkyellow
    highlight GitGutterDelete ctermfg=darkred

    runtime macros/matchit.vim

    g:ale_fixers = {
        c:          ['astyle'            ],
        cpp:        ['astyle'            ],
        css:        ['prettier'          ],
        hcl:        ['packer'            ],
        html:       ['prettier'          ],
        java:       ['google_java_format'],
        javascript: ['prettier'          ],
        json:       ['jq'                ],
        markdown:   ['prettier'          ],
        perl:       ['perltidy'          ],
        python:     ['isort', 'black'    ],
        sh:         ['shfmt'             ],
        terraform:  ['terraform'         ],
        typescript: ['prettier'          ],
        xml:        ['xmllint'           ],
        yaml:       ['prettier'          ],
    }
    g:ale_linters_ignore = {
        java: ['checkstyle'],
    }

    g:ale_java_google_java_format_options = '--aosp'
    g:ale_json_jq_options = '-S --indent 4'
    g:ale_python_flake8_options = '--ignore=E501'
    g:ale_python_ruff_options = '--ignore=E501'
    g:ale_sql_sqlfluff_options = '--dialect postgres'
    g:ale_virtualtext_cursor = 'disabled'
    g:blamer_date_format = '%Y-%m-%dT%H:%M:%S%Z'
    g:blamer_delay = 300
    g:blamer_enabled = 0
    g:blamer_show_in_insert_modes = 0
    g:blamer_show_in_visual_modes = 0
    g:blamer_template = '<committer-mail> <committer-time> <summary>'

    highlight Blamer ctermfg=lightgray
# End of Plugin Config

syntax on
filetype plugin indent on

highlight ColorColumn ctermbg=darkgray
highlight StatusLine ctermbg=darkgray ctermfg=black
highlight StatusLineNC ctermbg=darkgray ctermfg=black
highlight TabLine cterm=NONE ctermbg=black ctermfg=darkgray
highlight TabLineFill ctermfg=black
highlight TabLineSel ctermbg=black
highlight VertSplit ctermbg=darkgray ctermfg=black

set autoindent
set background=dark
set backspace=2
set belloff=all
set colorcolumn=73,81,101,121
set directory=~/.vim/swapfiles//
set expandtab
set fileformats=unix
set hlsearch
set incsearch
set nomodeline
set redrawtime=10000
set scrolloff=5
set shiftwidth=4
set synmaxcol=0
set tabstop=4
set updatetime=250

augroup vimrc
    autocmd!
    autocmd BufNew,BufRead * :syntax sync fromstart
augroup end
