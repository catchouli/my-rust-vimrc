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

call plug#end()

" Stop build directories showing up in ctrlp etc
set wildignore+=*\\target\\**

" Number
set number

