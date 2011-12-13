:set number
:set hlsearch
:set incsearch
:set hidden
:set autoindent
:set ignorecase
:set path=./**
:set ts=4
" pathogen
:call pathogen#infect()
:call pathogen#helptags()
" colorscheme
syntax on 
:au VimEnter * :colorscheme desert 
" command-t
:let g:CommandTMaxHeight=20 " needs to be done before it's loaded
" syntastic
:au VimEnter * :let g:syntastic_auto_loc_list=1
" conque_term
":au VimEnter * :let my_terminal = conque_term#open('/bin/bash', ['bel split', 'resize 15'], 1)
" nerdtree
:au VimEnter * :let NERDTreeShowHidden=1
:au VimEnter * :NERDTree
:au VimEnter * :let g:acp_behaviorKeywordLength = 1 
" autocomplete
:filetype plugin on
:set ofu=syntaxcomplete#Complete
:au VimEnter * :let g:tagbar_width = 30
:au VimEnter * nested :TagbarOpen
