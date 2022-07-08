" Fix shift insert
inoremap <silent>  <S-Insert>  <C-R>+

" Theme
colorscheme molokai

" Plug plugins
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'https://github.com/ctrlpvim/ctrlp.vim'

call plug#end()

"" Rust stuff
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

set wildignore+=*\\target\\**
