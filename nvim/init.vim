call plug#begin('~/.local/share/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jesseleite/vim-agriculture'
Plug 'Yggdroot/indentLine'
Plug 'ajmwagar/vim-deus'

call plug#end()

filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

" yank copy
set clipboard+=unnamedplus

" vim-deus
set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256

" vim settings
let &t_ut=''
set noswapfile
set number

" nerdtree
autocmd VimEnter * NERDTree
let NERDTreeShowHidden = 1
map <c-v> :vertical resize +10<CR>
map <c-c> :vertical resize -10<CR>


" indentLine
let g:indentLine_setColors = 0 
let g:indentLine_char = '┊'
let g:vim_json_syntax_conceal = 0
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" FZF
" https://dev.to/iggredible/how-to-search-faster-in-vim-with-fzf-vim-36ko
" "https://github.com/sharkdp/fd
set rtp+=/opt/homebrew/opt/fzf
let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden'
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>r :Files<CR>
nnoremap <Leader>f :Rg<CR>
nnoremap <Leader>/ :BLines<CR>
nnoremap <Leader>' :Marks<CR>
nnoremap <Leader>g :Commits<CR>
nnoremap <Leader>H :Helptags<CR>
nnoremap <Leader>hh :History<CR>
nnoremap <Leader>h: :History:<CR>
nnoremap <Leader>h/ :History/<CR>
" command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..,..'}, <bang>0)
nmap <Leader>ff <Plug>RgRawSearch

" tabs
nnoremap <C-h> :tabprevious<CR>                                                                            
nnoremap <C-l> :tabnext<CR>
nnoremap <C-j> :tabedit<CR>
nnoremap <C-k> :tabclose<CR>

" windows
nnoremap <C-n> :new<CR>
nnoremap <C-m> :vnew<CR>
nnoremap <C-y> :wincmd h<CR>
nnoremap <C-u> :wincmd j<CR>
nnoremap <C-i> :wincmd k<CR>
nnoremap <C-o> :wincmd l<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
