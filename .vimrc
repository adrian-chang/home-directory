set number
set hlsearch
set incsearch
set hidden
set autoindent
set ignorecase
set path=./**
set ts=4
filetype plugin on " allow a plugin to be loaded based on a filetype

" Macvim / GUI Vim
set guioptions-=T

" pathogen, should be first
call pathogen#infect() " call pathogen#infect, to use package manager
call pathogen#helptags() " call pathogen#helptags, to generate tag files from bundles

" colorscheme
syntax on " highlight syntax
au VimEnter * :colorscheme desert " .vim/colors

" command-t
let g:CommandTMaxHeight=18 " needs to be done before it's loaded

" syntastic
au VimEnter * :let g:syntastic_auto_loc_list=1 " let the error list popup when needed and used

" nerdtree
au VimEnter * :let NERDTreeShowHidden=1 " show hidden files
au VimEnter * :NERDTree " open NERDTree

" autocomplete
au VimEnter * :let g:acp_behaviorKeywordLength=1 " autocomplete after 1 character 

" tagbar 
au VimEnter * :let g:tagbar_width=25 " set the tagbar width to 25 characters
au VimEnter * nested :TagbarOpen " open tagbar on every nested window switch
