" Vundle start
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Vim-Airline
Plugin 'bling/vim-airline'
" Syntastic (install various syntax checkers)
Plugin 'scrooloose/syntastic'
" NerdTree
Plugin 'scrooloose/nerdtree'
" Vim Session
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
" Vim Javascript (Autocomplete Improvement)
Plugin 'pangloss/vim-javascript'
" Tagbar (install ctags)
Plugin 'majutsushi/tagbar'
" Ack (install ack)
Plugin 'mileszs/ack.vim'
" CtrlP
Plugin 'kien/ctrlp.vim'
" neocomplcache.vim
Plugin 'shougo/vimshell.vim'
Plugin 'shougo/neocomplcache.vim'
" jsbeautify
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

"  Put your non-Plugin stuff after this line
set number
set hlsearch
set incsearch
set hidden
set autoindent
set ignorecase
set path=./**
set tabstop=2
set shiftwidth=2
set expandtab

" Macvim / GUI Vim
set guioptions-=T " don't show gui bar

" colorscheme
syntax on " highlight syntax
au VimEnter * :colorscheme desert " .vim/colors

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
au VimEnter * :let g:syntastic_loc_list_height=5 " error list cap at 5
let g:syntastic_javascript_checkers = ['eslint']

" neocomplcache.vim
" Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

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
