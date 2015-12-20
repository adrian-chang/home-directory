" Vundle start
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim-Airline
Plugin 'bling/vim-airline'
" Syntastic (install various syntax checkers)
Plugin 'scrooloose/syntastic'
" NerdTree
Plugin 'scrooloose/nerdtree'
" Tagbar (install ctags)
Plugin 'majutsushi/tagbar'
" ag
Plugin 'rking/ag.vim'
" CtrlP
Plugin 'ctrlpvim/ctrlp.vim'
" YouCompleteMe (install)
Plugin 'Valloric/YouCompleteMe'
" vim-git-gutter
Plugin 'airblade/vim-gitgutter'
" indent
Plugin 'Yggdroot/indentLine'
" colors
Plugin 'flazz/vim-colorschemes'
" fugitive.vim
Plugin 'tpope/vim-fugitive'
" numbers.vim
Plugin 'myusuf3/numbers.vim'
" tern_for_vim (autocomplete JS), requires extra install
Plugin 'ternjs/tern_for_vim'
" copy paste
Plugin 'NLKNguyen/copy-cut-paste.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on           " required

"  Put your non-Plugin stuff after this line
set number
set hlsearch
set incsearch
set hidden
set autoindent
set ignorecase
set path=./**
set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

" Macvim / GUI Vim
set guioptions-=T " don't show gui bar

" colorscheme
syntax on " highlight syntax
au VimEnter * :colorscheme nightsky " .vim/colors

" CtrlP
set wildignore+=vendor/**,node_modules/**,.*/**,coverage/**,dist/**
" https://github.com/kien/ctrlp.vim/issues/58
let g:ctrlp_custom_ignore = '\v[\/](vendor|node_modules|target|dist|build|coverage)|(\.(swp|ico|git|svn|DS_Store))$'
nnoremap <silent> <Leader>[ :CtrlPMixed<CR>
nnoremap <silent> <Leader>` :CtrlPClearCache<CR>

" nerdtree
let g:NERDTreeShowHidden=1 " show hidden files
let g:NERDTreeWinSize=25 " nerdtree width window
let g:NERDTreeShowBookmarks=1 " show the bookmarks stored
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" au GUIEnter * :NERDTree " open NERDTree:

" syntastic
au VimEnter * :let g:syntastic_auto_loc_list=1 " let the error list popup when needed and used
au VimEnter * :let g:syntastic_check_on_wq=0 " error list doesn't show on write
au VimEnter * :let g:syntastic_loc_list_height=5 " error list cap at 5
au VimEnter * :let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_javascript_checkers = ['eslint']
nnoremap <silent> <Leader>' :SyntasticReset<CR>
nnoremap <silent> <Leader>; :SyntasticCheck<CR>

" tagbar
let g:tagbar_width=25 " set the tagbar width to 25 characters
" au VimEnter * nested :TagbarOpen " open tagbar on every nested window switch

" arrow pad window resize
nnoremap <Leader>9 :vertical resize -5<cr>
nnoremap <Leader>0 :resize +5<cr>
nnoremap <Leader>- :resize -5<cr>
nnoremap <Leader>= :vertical resize +5<cr>

" vim sessions
let g:session_extension = '.bak' " .bak extensions for sessions
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'       " save automatically
let g:session_autosave_periodic = 5 " 5 minutes autosave sessions

" plugin keymappings

" per file type specific commands

" Vim Airline
set laststatus=2                             " always show statusbar

" no swap
set noswapfile

" spaces
let g:indentLine_color_term = 226
let g:indentLine_char ='|'
let g:indentLine_color_tty_light = 0
let g:indentLine_color_tty_dark = 0 
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'

" tab
nnoremap <Leader>' :tabn<cr>
nnoremap <Leader>; :tabp<cr>
nnoremap <Leader>l :tabedit<cr>
au VimEnter * :hi TablineFill ctermfg=black

" autocomplete
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
set completeopt-=prev
