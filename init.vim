" Change filetype settings
filetype plugin indent on

" Fix shift insert
inoremap <silent>  <S-Insert>  <C-R>+

" Theme
colorscheme molokai

" Plug plugins
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'https://github.com/ctrlpvim/ctrlp.vim'

Plug 'tikhomirov/vim-glsl'

Plug 'vim-airline/vim-airline'

Plug 'easymotion/vim-easymotion'

call plug#end()

" Stop build directories showing up in ctrlp etc
set wildignore+=*\\target/**,*/target/**,*\\dist\\**,*\dist\**

" Number
set number
set relativenumber

" Clear search highlight
nnoremap <CR> :noh<CR>

" Default tab settings...
set expandtab
set shiftwidth=4
set tabstop=4

let mapleader=","

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    au TermOpen  * setlocal nonumber | startinsert
    au TermClose * setlocal   number | call feedkeys("\<C-\>\<C-n>")
endif
