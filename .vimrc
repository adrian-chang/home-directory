set number
set hlsearch
set incsearch
set hidden
set autoindent
set ignorecase
set path=./**
set ts=4
set shiftwidth=4

filetype on " trigger the autocommand for filetype changes (used for tabbing etc. per file)
filetype plugin on " allow a plugin to be loaded based on a filetype

" Macvim / GUI Vim
set guioptions-=T " don't show gui bar

" pathogen, should be first
call pathogen#infect() " call pathogen#infect, to use package manager
call pathogen#helptags() " call pathogen#helptags, to generate tag files from bundles

" colorscheme
syntax on " highlight syntax
au VimEnter * :colorscheme desert " .vim/colors

" command-t
let g:CommandTMaxHeight=18 " needs to be done before it's loaded
nnoremap <silent> <Leader>[ :CommandT<CR>
nnoremap <silent> <Leader>] :CommandTBuffer<CR>
nnoremap <silent> <Leader>' :CommandTFlush<CR>

" syntastic
au VimEnter * :let g:syntastic_auto_loc_list=1 " let the error list popup when needed and used

" nerdtree
let g:NERDTreeShowHidden=1 " show hidden files
let g:NERDTreeWinSize=25 " nerdtree width window
let g:NERDTreeShowBookmarks=1 " show the bookmarks stored
au GUIEnter * :NERDTree " open NERDTree:

" autocomplete
let g:acp_behaviorKeywordLength=1 " autocomplete after 1 character 

" tagbar 
let g:tagbar_width=25 " set the tagbar width to 25 characters
au VimEnter * nested :TagbarOpen " open tagbar on every nested window switch

" ruby-vim-debugger
let g:ruby_debugger_debug_mode = 1 " print out debug messages
let g:ruby_debugger_progname = 'mvim' " macvim is default vim
let g:ruby_debugger_default_script = 'script/rails server thin' " gogobot specific thin startup rdebugger 
let g:ruby_debugger_spec_path = '/Users/adrian/.rvm/gems/ruby-1.9.3-p0@gogobot/bin/rspec'
let g:ruby_debugger_builtin_sender = 0
set statusline=%{ruby_debugger#statusline()} " show if we're in debug mode

" plugin keymappings

" per file type specific commands

" Status Line   
" http://stackoverflow.com/questions/5547943/display-number-of-current-buffer 
set laststatus=2                             " always show statusbar  
set statusline+=  
set statusline+=%-10.3n\                     " buffer number  
set statusline+=%f\                          " filename   
set statusline+=%h%m%r%w                     " status flags  
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
set statusline+=%=                           " right align remainder  
set statusline+=0x%-8B                       " character value  
set statusline+=%-14(%l,%c%V%)               " line, character  
set statusline+=%<%P                         " file position  
